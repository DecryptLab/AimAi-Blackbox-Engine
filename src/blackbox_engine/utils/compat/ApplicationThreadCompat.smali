.class public Ltop/niunaijun/blackbox/utils/compat/ApplicationThreadCompat;
.super Ljava/lang/Object;
.source "ApplicationThreadCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 12
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 13
    invoke-static {}, Lblack/android/app/BRIApplicationThreadOreoStub;->get()Lblack/android/app/IApplicationThreadOreoStubStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/android/app/IApplicationThreadOreoStubStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0

    .line 15
    :cond_f
    invoke-static {}, Lblack/android/app/BRApplicationThreadNative;->get()Lblack/android/app/ApplicationThreadNativeStatic;

    move-result-object v0

    invoke-interface {v0, p0}, Lblack/android/app/ApplicationThreadNativeStatic;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method
