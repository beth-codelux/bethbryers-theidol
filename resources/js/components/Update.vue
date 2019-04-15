<template>
    <modal name="modal-update" width="600" height="auto">
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
                <label for="updateName">Name</label>
                <input type="text" class="form-control" id="updateName" v-model="formData.name">
            </div>
            <div class="col-8 form-group">
                <label for="updateAddress">Address</label>
                <input type="text" class="form-control" id="updateAddress" v-model="formData.address">
            </div>
            <div class="col-4 form-group">
                <label for="updatePostcode">Postcode</label>
                <input type="text" class="form-control" id="updatePostcode" v-model="formData.postcode">
            </div>
            <div class="col-12 form-group">
                <label for="updateTelephone">Telephone</label>
                <input type="text" class="form-control" id="updateTelephone" v-model="formData.telephone">
            </div>
            <div class="col-12 form-group">
                <label for="updateEmail">Email</label>
                <input type="email" class="form-control" id="updateEmail" v-model="formData.email">
            </div>
            <div class="col-12 form-group">
                <label for="updateDob">Date of Birth</label>
                <input type="date" class="form-control" id="updateDob" v-model="formData.dob">
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
        props: ['data'],
        watch: {
            data: {
                handler: function(){
                    this.formData = this.data;
                },
                deep: true
            }
        },
        methods: {
            onSubmit: function(){
                axios.post('/api/update/'+this.data.id, this.formData).then((res)=>{
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
