.class public final Ltop/niunaijun/blackbox/core/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final DISPATCHING:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTALL_LOCK:Ljava/lang/Object;

.field private static final TERMINATION_STATUS:I = 0xa


# instance fields
.field private final context:Landroid/content/Context;

.field private final packageName:Ljava/lang/String;

.field private final previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final processName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/CrashHandler;->INSTALL_LOCK:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/CrashHandler;->DISPATCHING:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, v0

    .line 25
    :goto_b
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->packageName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->processName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private dispatchCustomHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 67
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->getExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_18

    if-eqz v0, :cond_18

    if-eq v0, p0, :cond_18

    .line 71
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, p0, :cond_18

    instance-of p0, v0, Ltop/niunaijun/blackbox/core/CrashHandler;

    if-eqz p0, :cond_15

    goto :goto_18

    .line 78
    :cond_15
    :try_start_15
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_18

    :catchall_18
    :cond_18
    :goto_18
    return-void
.end method

.method private dispatchPreviousHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 84
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_f

    if-ne v0, p0, :cond_7

    goto :goto_f

    .line 89
    :cond_7
    :try_start_7
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    return-void

    .line 91
    :catchall_b
    invoke-static {}, Ltop/niunaijun/blackbox/core/CrashHandler;->terminateProcess()V

    return-void

    .line 85
    :cond_f
    :goto_f
    invoke-static {}, Ltop/niunaijun/blackbox/core/CrashHandler;->terminateProcess()V

    return-void
.end method

.method public static install(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_1c

    .line 35
    sget-object v0, Ltop/niunaijun/blackbox/core/CrashHandler;->INSTALL_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 38
    instance-of v2, v1, Ltop/niunaijun/blackbox/core/CrashHandler;

    if-eqz v2, :cond_f

    .line 39
    monitor-exit v0

    return-void

    .line 41
    :cond_f
    new-instance v2, Ltop/niunaijun/blackbox/core/CrashHandler;

    invoke-direct {v2, p0, p1, p2, v1}, Ltop/niunaijun/blackbox/core/CrashHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 43
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw p0

    .line 33
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static terminateProcess()V
    .registers 2

    const/16 v0, 0xa

    .line 97
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_d

    .line 99
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_d
    move-exception v1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 100
    throw v1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ltop/niunaijun/blackbox/core/CrashHandler;->DISPATCHING:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 50
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->context:Landroid/content/Context;

    iget-object v3, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->packageName:Ljava/lang/String;

    iget-object v4, p0, Ltop/niunaijun/blackbox/core/CrashHandler;->processName:Ljava/lang/String;

    invoke-static {v2, v3, v4, p1, p2}, Ltop/niunaijun/blackbox/diagnostics/CrashDiagnostics;->persistJavaCrash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    .line 53
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/CrashHandler;->dispatchCustomHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 56
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/CrashHandler;->dispatchPreviousHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_28

    if-nez v0, :cond_27

    .line 59
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_27
    return-void

    :catchall_28
    move-exception p0

    if-nez v0, :cond_30

    sget-object p1, Ltop/niunaijun/blackbox/core/CrashHandler;->DISPATCHING:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 61
    :cond_30
    throw p0
.end method
