.class final Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;
.super Ljava/lang/Object;
.source "CarromOverlayWindowCallback.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final ROUTE_FAILURE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final TAG:Ljava/lang/String; = "CarromOverlayWindowCallback"

.field private static final TOUCH_BLOCKED:I = 0x2

.field private static final TOUCH_IGNORED:I


# instance fields
.field private capturedPointerId:I

.field private final delegate:Landroid/view/Window$Callback;

.field private routeGesture:Z

.field private suppressGesture:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->ROUTE_FAILURE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/view/Window$Callback;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    .line 29
    iput-object p1, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->delegate:Landroid/view/Window$Callback;

    return-void
.end method

.method private beginGesture(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 149
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->resetGesture()V

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeNative(IFF)I

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 155
    :cond_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeGesture:Z

    const/4 v0, 0x2

    if-ne v1, v0, :cond_24

    move v3, p1

    .line 157
    :cond_24
    iput-boolean v3, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    return v3
.end method

.method private cancelGesture()Z
    .registers 4

    .line 201
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeGesture:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 204
    :cond_6
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    .line 205
    iget v1, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 206
    invoke-static {v1, v2, v2}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeNative(IFF)I

    .line 208
    :cond_12
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->resetGesture()V

    return v0
.end method

.method static deactivate(Landroid/app/Activity;)V
    .registers 3

    .line 53
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->isCarromActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2f

    .line 57
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 59
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->getInstalledHandler(Landroid/view/Window$Callback;)Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 61
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->resetGesture()V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception p0

    .line 65
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->TAG:Ljava/lang/String;

    const-string v1, "Unable to reset Carrom overlay touch handler"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_23
    :goto_23
    :try_start_23
    invoke-static {}, Ltop/niunaijun/blackbox/core/NativeCore;->deactivateCarromTouch()V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_26} :catch_27
    .catch Ljava/lang/LinkageError; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception p0

    .line 70
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->TAG:Ljava/lang/String;

    const-string v1, "Unable to reset native Carrom overlay touch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-void
.end method

.method private finishGesture(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 188
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeGesture:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_6
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    .line 192
    iget v1, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 194
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, v2, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeNative(IFF)I

    .line 196
    :cond_1d
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->resetGesture()V

    return v0
.end method

.method private static getInstalledHandler(Landroid/view/Window$Callback;)Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1a

    .line 86
    :cond_e
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    .line 87
    instance-of v1, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;

    if-nez v1, :cond_17

    return-object v0

    .line 90
    :cond_17
    check-cast p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;

    return-object p0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_18

    .line 144
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    return p0

    .line 138
    :cond_18
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->releaseCapturedPointer(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 134
    :cond_1d
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    return p0

    .line 142
    :cond_20
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->cancelGesture()Z

    move-result p0

    return p0

    .line 136
    :cond_25
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->moveCapturedPointer(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 140
    :cond_2a
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->finishGesture(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 132
    :cond_2f
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->beginGesture(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static install(Landroid/app/Activity;)V
    .registers 6

    .line 33
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->isCarromActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_37

    .line 37
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_37

    .line 41
    :cond_e
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 42
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->isInstalled(Landroid/view/Window$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_37

    .line 45
    :cond_1b
    const-class v1, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/view/Window$Callback;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;

    invoke-direct {v3, v0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;-><init>(Landroid/view/Window$Callback;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window$Callback;

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_37} :catch_38
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-void

    :catch_38
    move-exception p0

    .line 48
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->TAG:Ljava/lang/String;

    const-string v1, "Unable to install Carrom overlay touch bridge"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private invokeObjectMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 113
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_8a

    goto :goto_32

    :sswitch_12
    const-string v0, "hashCode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v3, 0x2

    goto :goto_32

    :sswitch_1d
    const-string v0, "equals"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_32

    :cond_26
    move v3, v1

    goto :goto_32

    :sswitch_28
    const-string v0, "toString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    packed-switch v3, :pswitch_data_98

    .line 121
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported proxy method: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :pswitch_4e
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_57
    if-eqz p3, :cond_61

    .line 115
    array-length p0, p3

    if-ne p0, v1, :cond_61

    aget-object p0, p3, v2

    if-ne p1, p0, :cond_61

    goto :goto_62

    :cond_61
    move v1, v2

    :goto_62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 119
    :pswitch_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p2, 0x40

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_8a
    .sparse-switch
        -0x69e9ad94 -> :sswitch_28
        -0x4d378041 -> :sswitch_1d
        0x8cdac1b -> :sswitch_12
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_67
        :pswitch_57
        :pswitch_4e
    .end packed-switch
.end method

.method private static isCarromActivity(Landroid/app/Activity;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/NativeCore;->isCarromPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static isInstalled(Landroid/view/Window$Callback;)Z
    .registers 1

    .line 79
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->getInstalledHandler(Landroid/view/Window$Callback;)Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static isTouchDispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 4

    .line 126
    const-string v0, "dispatchTouchEvent"

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    array-length p0, p1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1a

    aget-object p0, p1, v0

    instance-of p0, p0, Landroid/view/MotionEvent;

    if-eqz p0, :cond_1a

    return v1

    :cond_1a
    return v0
.end method

.method private moveCapturedPointer(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 162
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeGesture:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_6
    iget v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 166
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    return p0

    .line 168
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_20

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v0, 0x2

    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeNative(IFF)I

    .line 172
    :cond_20
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    return p0
.end method

.method private releaseCapturedPointer(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 176
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeGesture:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    if-ne v1, v2, :cond_21

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, v1, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeNative(IFF)I

    const/4 p1, -0x1

    .line 182
    iput p1, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    .line 184
    :cond_21
    iget-boolean p0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    return p0
.end method

.method private resetGesture()V
    .registers 2

    const/4 v0, -0x1

    .line 213
    iput v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->capturedPointerId:I

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->routeGesture:Z

    .line 215
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->suppressGesture:Z

    return-void
.end method

.method private static routeNative(IFF)I
    .registers 4

    .line 220
    :try_start_0
    invoke-static {p0, p1, p2}, Ltop/niunaijun/blackbox/core/NativeCore;->routeCarromTouch(IFF)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 222
    sget-object p1, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->ROUTE_FAILURE_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 223
    sget-object p1, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->TAG:Ljava/lang/String;

    const-string p2, "Unable to route Carrom overlay touch event"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    return v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    .line 96
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->invokeObjectMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 98
    :cond_d
    invoke-static {p2, p3}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->isTouchDispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p0, 0x1

    .line 99
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 102
    :cond_24
    :try_start_24
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/delegate/CarromOverlayWindowCallback;->delegate:Landroid/view/Window$Callback;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 106
    throw p1

    .line 108
    :cond_33
    throw p0
.end method
