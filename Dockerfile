FROM node:dubnium-alpine
WORKDIR C:\\Users\\fahim.jan\\workspace\\api
COPY ./ ./
RUN npm install -g yarn forever --force && \
  yarn install --production --force
USER node
EXPOSE 3000
CMD ["forever", "app.js"]