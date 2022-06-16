export const state = () => ({
    home: true,
    about: false,
    resume: false
})

export const mutations = {
    switchTo(state, form) {
        if(form.current === 'home') {
            state.home = false;
        } else if(form.current === 'about') {
            state.about = false;
        } else if(form.current === 'resume') {
            state.resume = false;
        }

        if(form.to === 'home') {
            state.home = true;
        } else if(form.to === 'about') {
            state.about = true;
        } else if(form.to === 'resume') {
            state.resume = true;
        }
    }
}