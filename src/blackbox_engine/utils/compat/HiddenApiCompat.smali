.class public final Ltop/niunaijun/blackbox/utils/compat/HiddenApiCompat;
.super Ljava/lang/Object;
.source "HiddenApiCompat.java"


# static fields
.field private static final ALL_SIGNATURES:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "HiddenApiCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .registers 7

    .line 18
    const-string v0, "Unable to exempt Android hidden APIs"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_9

    goto :goto_34

    .line 23
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v1, v2, :cond_29

    .line 25
    :try_start_13
    new-array v1, v5, [Ljava/lang/String;

    aput-object v3, v1, v4

    invoke-static {v1}, Lorg/lsposed/hiddenapibypass/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1b} :catch_20
    .catch Ljava/lang/LinkageError; {:try_start_13 .. :try_end_1b} :catch_1e

    if-eqz v1, :cond_29

    goto :goto_34

    :catch_1e
    move-exception v1

    goto :goto_21

    :catch_20
    move-exception v1

    .line 30
    :goto_21
    const-string v2, "HiddenApiCompat"

    const-string v6, "Unsafe hidden-API exemption failed"

    invoke-static {v2, v6, v1}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 35
    :goto_2a
    :try_start_2a
    new-array v2, v5, [Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v2}, Lorg/lsposed/hiddenapibypass/LSPass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v2
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_32} :catch_3d
    .catch Ljava/lang/LinkageError; {:try_start_2a .. :try_end_32} :catch_3b

    if-eqz v2, :cond_35

    :goto_34
    return-void

    .line 45
    :cond_35
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3b
    move-exception v2

    goto :goto_3e

    :catch_3d
    move-exception v2

    :goto_3e
    if-eqz v1, :cond_43

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 42
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
