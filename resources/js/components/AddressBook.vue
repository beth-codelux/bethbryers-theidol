<template>
    <div>
        <div class="form-inline">
            <div class="form-group mr-sm-2 mb-2">
                <label for="search" class="sr-only">Search</label>
                <input type="search" class="form-control" id="search" placeholder="Search..." v-model="search">
            </div>
            <button type="button" class="btn btn-primary mb-2" @click="getData">Go</button>
        </div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">Postcode</th>
                    <th scope="col">Telephone</th>
                    <th scope="col">Email</th>
                    <th scope="col">Date of Birth</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="contact in contacts">
                    <th scope="row">{{ contact.id }}</th>
                    <td>{{ contact.name }}</td>
                    <td>{{ contact.address }}</td>
                    <td>{{ contact.postcode }}</td>
                    <td>{{ contact.telephone }}</td>
                    <td>{{ contact.email }}</td>
                    <td>{{ contact.dob | moment('DD/MM/YYYY') }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    import axios from 'axios';
    export default {
        data: function(){
            return {
                contacts: [],
                search: ''
            }
        },
        mounted() {
            this.getData();
        },
        methods: {
            getData: function(){
                axios.get('/api/get_all', {
                    params: {
                        search: this.search
                    }
                }).then((res)=>{
                    this.contacts = res.data;
                })
            }
        }
    }
</script>
