# menggunakan base image Node.js versi 14
FROM node:14

# menentukan working directory
WORKDIR /app

# menyalin seluruh source code ke working directory container
COPY . .

# menentukan environment dan host database
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan perintah untuk instalasi dependensi dan menjalankan perintah build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# menentukan port yang digunakan oleh aplikasi
EXPOSE 8080

# menentukan perintah yang akan dijalankan pada terminal container
CMD ["npm", "start"]