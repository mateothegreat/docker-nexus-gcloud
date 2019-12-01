FROM sonatype/nexus3

# 
# Download and install gcloud-sdk.
# 
RUN wget https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz && \
    tar zxvf google-cloud-sdk.tar.gz && \
    rm google-cloud-sdk.tar.gz && \
    ./google-cloud-sdk/install.sh --usage-reporting=true --path-update=true

#
# Add gcloud to the path
#
ENV PATH /google-cloud-sdk/bin:$PATH
