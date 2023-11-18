<template>
    <div id="AuthPage" class="w-full h-[100vh] h-screen pt-32">
        <div class="w-full">
            <div class="w-full flex items-center justify-center gap-2.5 p-2">
                <img class="w-[35px]" src="/threads-logo.png">
                <span class="font-bold text-2xl text-white">Threads</span>
            </div>

            <div class="max-w-[350px] mx-auto px-2 text-white">

                <div class="text-center mb-3 mt-4"> <nuxt-link to="/auth">Login</nuxt-link> / <nuxt-link to="/register">Register</nuxt-link></div>

                <!-- <button 
                    @click="login('github')"
                    class="
                        flex 
                        items-center 
                        justify-center 
                        gap-3
                        p-1.5
                        w-full
                        border 
                        rounded-full
                        text-lg
                        font-semibold
                    "
                >
                    <div class="flex items-center gap-2 justify-center">
                        <img class="w-full max-w-[30px] rounded-full" src="/github-logo.png">
                        Github
                    </div>
                </button> -->
                <div class="flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8">
                    <div class="mt-2 sm:mx-auto sm:w-full sm:max-w-sm">
                        <form class="space-y-6" @submit.prevent="signUp()">
                            <div>
                                <label for="email" class="block text-sm font-medium leading-6 text-white">Email
                                    address</label>
                                <div class="mt-2">
                                    <input v-model="email" id="email" name="email" type="email" autocomplete="email" required=""
                                        class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                                </div>
                            </div>

                            <div>
                                <div class="flex items-center justify-between">
                                    <label for="password"
                                        class="block text-sm font-medium leading-6 text-white">Password</label>
                                </div>
                                <div class="mt-2">
                                    <input v-model="password" id="password" name="password" type="password" autocomplete="current-password"
                                        required=""
                                        class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                                </div>
                            </div>

                            <div>
                                <button type="submit"
                                    class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Sign
                                    in</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
const client = useSupabaseClient()
const user = useSupabaseUser()
const email = ref('')
const password = ref(null)
const errorMsg = ref(null)
const successMsg = ref(null)

async function signUp() {
    try {
       const { data, error } = await client.auth.signUp({
           email: email.value,
           password: password.value,
       });
       if (error) throw error
       successMsg.value = 'Check your email for confirmation'   
    } catch (error) {
        errorMsg.value = error.message
    }
}
</script>