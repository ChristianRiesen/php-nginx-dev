# Import from https://github.com/webdevops/Dockerfile/blob/master/docker/php-nginx-dev/8.0/Dockerfile
FROM webdevops/php-nginx-dev:8.0


RUN set -x \
    # Get node prepared
	&& apt-get install curl software-properties-common \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \

	# prep yarn
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \

    && apt-get update \
	&& apt-get install nodejs yarn \
	
    && docker-run-bootstrap \
    && docker-image-cleanup