# Book Management System (BMS)

This is **BMS server** with user-admin paradigm with respective functionality access.

For frontend : please visit [BMS-CLIENT](https://github.com/sky-dtu/bms-client/)

## Clone


```bash
git clone https://github.com/sky-dtu/bms-server.git
```

## Prepare DB

We have used SQL as database using XAMPP.\
To prepare the DB, 
* Edit the required DB credentials in the **`.env`** file
* Find SQL scripts in folder `bms-server/mock_data`
* Run/Import the SQL script to insert demo data in `XAMPP SQL`

## Start

```bash
cd bms-server

# install dependencies
npm init
# or
yarn init

# start the app
yarn run start
```

# LIST OF API

## AUTH ENDPOINTS (v1/api/auth)

**Sign up**

* **POST** `/sign-up` 
* **Body** : `username, password, password_repeat`

**Sign in**

* **PATCH** `/login` 
* **Body** : `username, password`


## BOOK ENDPOINTS (v1/api/book)

**Add Book**

* **POST** `/add-book` 
* **Body** : `isbn, title, authorname, yearofpublication, category, availablecopies`

**Add Copies / Update Available Book Copies**

* **PATCH** `/update-copy` 
* **Body** : `isbn, copies`

**Delete Book**

* **DELETE** `/delete-book/:id` 
* **Params** : `id`

**Get All Books**

* **GET** `/get-book` 
* **Params** : `None`

**Get Book by ID**

* **GET** `/get-book` 
* **Params** : `id / title / author / min-year`

**Issue Book / Decrease Book Copies to DB**

* **PATCH** `/decrease-copy/:id` 
* **Params** : `id`

**Get Trending Books**

* **GET** `/get/trending-book` 
* **Params** : `id`



## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)