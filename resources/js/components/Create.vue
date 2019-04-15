<template>
    <modal name="modal-create" width="600" height="auto">
        <div class="p-4 row">
            <div v-if="errors" class="col-12">
                <div class="alert alert-danger" role="alert">
                    There were some errors with your form, please check and try again:
                    <ul>
                        <li v-for="error in errors">{{ error[0] }}</li>
                    </ul>
                </div>
            </div>
            <div class="col-12 form-group">
                <label for="createName">Name</label>
                <input type="text" class="form-control" id="createName" v-model="formData.name">
            </div>
            <div class="col-8 form-group">
                <label for="createAddress">Address</label>
                <input type="text" class="form-control" id="createAddress" v-model="formData.address">
            </div>
            <div class="col-4 form-group">
                <label for="createPostcode">Postcode</label>
                <input type="text" class="form-control" id="createPostcode" v-model="formData.postcode">
            </div>
            <div class="col-12 form-group">
                <label for="createTelephone">Telephone</label>
                <input type="text" class="form-control" id="createTelephone" v-model="formData.telephone">
            </div>
            <div class="col-12 form-group">
                <label for="createEmail">Email</label>
                <input type="email" class="form-control" id="createEmail" v-model="formData.email">
            </div>
            <div class="col-12 form-group">
                <label for="createDob">Date of Birth</label>
                <input type="date" class="form-control" id="createDob" v-model="formData.dob">
            </div>
            <div class="col-12">
                <button @click="onSubmit" type="button" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </modal>
</template>

<script>
    import axios from 'axios';
    export default {
        data: function(){
            return {
                formData: {
                    name: null,
                    address: null,
                    postcode: null,
                    telephone: null,
                    email: null,
                    dob: null
                },
                errors: null
            }
        },
        mounted() {

        },
        methods: {
            onSubmit: function(){
                axios.post('/api/create', this.formData).then((res)=>{
                    this.$emit('success');
                    this.errors = null;
                    for(let key in this.formData){
                        this.formData[key] = null;
                    }
                }).catch((err)=>{
                    this.errors = err.response.data.errors;
                })
            }
        }
    }
</script>
