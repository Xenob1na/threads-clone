<template>
    <div id="MainLayout" class="h-screen">
        <div class="w-full max-w-[500px] mx-auto">
            <div id="TopMenu" class="w-full flex items-center justify-center px-2 h-10 my-2">
                <img class="w-[35px]" src="/threads-logo.png" alt="">
            </div>
        </div>

        <div class="flex w-full max-w-[500px] mx-auto h-screen">
            <slot />
        </div>

        <div id="BottomNav" class="fixed z-50 bottom-0 w-full flex h-[70px] border-t border-t-gray-700 bg-black">
            <div class="w-full flex items-center justify-around max-w-[500px] mx-auto">
                <button
                    @click="navigateTo('/')"
                    class="w-full h-full"
                >
                    <Icon name="material-symbols:home-outline" size="35" color="white"/>
                </button>
                <button
                    @click="userStore.isMenuOverlay = true"
                    class="w-full h-full"
                >
                    <Icon name="material-symbols:edit-square-outline-rounded" size="32" color="white"/>
                </button>
                <button
                    @click="userStore.isLogoutOverlay = true"
                    class="w-full h-full"
                >
                    <Icon name="material-symbols:logout-rounded" size="32" color="white"/>
                </button>
            </div>
        </div>
    </div>
</template>

<script setup>
import { useUserStore } from '../stores/user';
const userStore = useUserStore();
</script>