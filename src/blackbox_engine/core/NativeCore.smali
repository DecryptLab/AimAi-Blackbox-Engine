.class public final Ltop/niunaijun/blackbox/core/NativeCore;
.super Ljava/lang/Object;
.source "NativeCore.java"


# static fields
.field private static final ACCESS_REFRESH_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final ACCESS_REFRESH_METHOD:Ljava/lang/String; = "refreshGrant"

.field private static final ACCESS_REFRESH_PENDING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final ACCESS_REFRESH_THREAD:Ljava/lang/String; = "aim-access-refresh"

.field private static final CARROM_PACKAGE_NAME:Ljava/lang/String; = "com.miniclip.carrom"

.field private static final TAG:Ljava/lang/String; = "NativeCore"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/NativeCore;->ACCESS_REFRESH_PENDING:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ltop/niunaijun/blackbox/core/NativeCore$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/NativeCore$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/core/NativeCore;->ACCESS_REFRESH_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 32
    const-string v0, "blackbox"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native deactivateCarromTouch()V
.end method

.method public static native enableIO()V
.end method

.method public static native init(III)V
.end method

.method public static initializeGuestApplication(Landroid/app/Application;)V
    .registers 2

    if-eqz p0, :cond_6

    .line 90
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/NativeCore;->onGuestApplicationReady(Landroid/app/Application;)V

    return-void

    .line 88
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Guest application is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initializeGuestFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 57
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/NativeCore;->isCarromPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_64

    const-string p0, "com.miniclip.carrom"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    .line 58
    new-instance p0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "access/grant.bundle"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    new-instance p1, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "telemetry/native-events.log"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_4d

    .line 62
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Carrom telemetry directory could not be created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Ltop/niunaijun/blackbox/core/NativeCore;->startGuestFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_64
    :goto_64
    return-void
.end method

.method public static installGuestCrashCapture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 74
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/NativeCore;->isCarromPackage(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_20

    .line 77
    :cond_7
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->getNativeCrashFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/NativeCore;->installNativeCrashRecorder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_20

    .line 79
    const-string p0, "NativeCore"

    const-string p1, "Native crash diagnostics could not be installed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method

.method private static native installNativeCrashRecorder(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static isCarromPackage(Ljava/lang/String;)Z
    .registers 2

    .line 53
    const-string v0, "com.miniclip.carrom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$requestAccessRefresh$1()V
    .registers 5

    .line 104
    const-string v0, "content://"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getAccessProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "refreshGrant"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_26} :catch_2e
    .catchall {:try_start_3 .. :try_end_26} :catchall_2c

    .line 109
    :goto_26
    sget-object v0, Ltop/niunaijun/blackbox/core/NativeCore;->ACCESS_REFRESH_PENDING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_2c
    move-exception v0

    goto :goto_37

    :catch_2e
    move-exception v0

    .line 107
    :try_start_2f
    const-string v2, "NativeCore"

    const-string v3, "Access refresh request failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2c

    goto :goto_26

    .line 109
    :goto_37
    sget-object v2, Ltop/niunaijun/blackbox/core/NativeCore;->ACCESS_REFRESH_PENDING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    throw v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "aim-access-refresh"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static native onGuestApplicationReady(Landroid/app/Application;)V
.end method

.method public static redirectPath(Ljava/io/File;)Ljava/io/File;
    .registers 2

    .line 125
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static redirectPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 120
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native registerBinderCaller(II)V
.end method

.method private static requestAccessRefresh()V
    .registers 0

    return-void
.end method
.method public static native routeCarromTouch(IFF)I
.end method

.method private static native startGuestFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native unregisterBinderCaller(I)V
.end method

###### Class top.niunaijun.blackbox.core.NativeCore$$ExternalSyntheticLambda0 (top.niunaijun.blackbox.core.NativeCore$$ExternalSyntheticLambda0)
