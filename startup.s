.global _MyApp
_MyApp:
    ldr sp, =stack_top
    bl entry
    b .