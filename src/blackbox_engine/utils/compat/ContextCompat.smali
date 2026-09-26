.class public Ltop/niunaijun/blackbox/utils/compat/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final MAX_ATTRIBUTION_CHAIN_DEPTH:I = 0x10

.field public static final TAG:Ljava/lang/String; = "ContextCompat"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 85
    :cond_1
    :try_start_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_12

    .line 86
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    goto :goto_61

    .line 92
    :cond_12
    invoke-static {p0}, Lblack/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lblack/android/app/ContextImplContext;->_set_mPackageManager(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_5d

    .line 94
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    .line 96
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :goto_22
    invoke-static {p0}, Lblack/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplContext;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lblack/android/app/ContextImplContext;->_set_mBasePackageName(Ljava/lang/Object;)V

    .line 100
    invoke-static {p0}, Lblack/android/app/BRContextImplKitkat;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplKitkatContext;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lblack/android/app/ContextImplKitkatContext;->_set_mOpPackageName(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lblack/android/content/BRContentResolver;->get(Ljava/lang/Object;)Lblack/android/content/ContentResolverContext;

    move-result-object v0

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lblack/android/content/ContentResolverContext;->_set_mPackageName(Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isS()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 104
    invoke-static {p0}, Lblack/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ContextImplContext;->getAttributionSource()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v0

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    :goto_61
    return-void
.end method

.method public static fixAttributionSourceState(Ljava/lang/Object;I)V
    .registers 3

    .line 29
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public static fixAttributionSourceState(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 8

    .line 33
    invoke-static {}, Lblack/android/content/BRAttributionSource;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x10

    if-ge v1, v2, :cond_4b

    if-eqz p0, :cond_4b

    if-eqz v0, :cond_4b

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_4b

    .line 39
    :cond_14
    invoke-static {p0}, Lblack/android/content/BRAttributionSource;->get(Ljava/lang/Object;)Lblack/android/content/AttributionSourceContext;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 40
    invoke-interface {v2}, Lblack/android/content/AttributionSourceContext;->_check_mAttributionSourceState()Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_21

    goto :goto_4b

    .line 43
    :cond_21
    invoke-interface {v2}, Lblack/android/content/AttributionSourceContext;->mAttributionSourceState()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_28

    goto :goto_4b

    .line 47
    :cond_28
    invoke-static {v3}, Lblack/android/content/BRAttributionSourceState;->get(Ljava/lang/Object;)Lblack/android/content/AttributionSourceStateContext;

    move-result-object v3

    if-nez v3, :cond_2f

    goto :goto_4b

    .line 51
    :cond_2f
    invoke-interface {v3, p2}, Lblack/android/content/AttributionSourceStateContext;->_set_packageName(Ljava/lang/Object;)V

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lblack/android/content/AttributionSourceStateContext;->_set_uid(Ljava/lang/Object;)V

    .line 53
    invoke-interface {v2}, Lblack/android/content/AttributionSourceContext;->_check_getNext()Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_40

    goto :goto_4b

    .line 56
    :cond_40
    invoke-interface {v2}, Lblack/android/content/AttributionSourceContext;->getNext()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_47

    goto :goto_4b

    :cond_47
    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    goto :goto_5

    :cond_4b
    :goto_4b
    return-void
.end method

.method public static fixContentProviderArgs([Ljava/lang/Object;ILjava/lang/String;)V
    .registers 8

    if-nez p0, :cond_3

    goto :goto_29

    .line 68
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    aget-object v0, p0, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 69
    aput-object p2, p0, v1

    .line 71
    :cond_f
    invoke-static {}, Lblack/android/content/BRAttributionSource;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_29

    .line 75
    :cond_16
    array-length v2, p0

    :goto_17
    if-ge v1, v2, :cond_29

    aget-object v3, p0, v1

    if-eqz v3, :cond_26

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 77
    invoke-static {v3, p1, p2}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fixAttributionSourceState(Ljava/lang/Object;ILjava/lang/String;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    :goto_29
    return-void
.end method
