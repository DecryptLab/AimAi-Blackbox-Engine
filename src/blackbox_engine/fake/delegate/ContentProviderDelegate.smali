.class public Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;
.super Ljava/lang/Object;
.source "ContentProviderDelegate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentProviderDelegate"

.field private static final sInjected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->sInjected:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearContentProvider(Ljava/lang/Object;)V
    .registers 3

    .line 115
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 116
    invoke-static {p0}, Lblack/android/providers/BRSettingsNameValueCacheOreo;->get(Ljava/lang/Object;)Lblack/android/providers/SettingsNameValueCacheOreoContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/providers/SettingsNameValueCacheOreoContext;->mProviderHolder()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 118
    invoke-static {p0}, Lblack/android/providers/BRSettingsContentProviderHolder;->get(Ljava/lang/Object;)Lblack/android/providers/SettingsContentProviderHolderContext;

    move-result-object p0

    invoke-interface {p0, v1}, Lblack/android/providers/SettingsContentProviderHolderContext;->_set_mContentProvider(Ljava/lang/Object;)V

    :cond_18
    return-void

    .line 121
    :cond_19
    invoke-static {p0}, Lblack/android/providers/BRSettingsNameValueCache;->get(Ljava/lang/Object;)Lblack/android/providers/SettingsNameValueCacheContext;

    move-result-object p0

    invoke-interface {p0, v1}, Lblack/android/providers/SettingsNameValueCacheContext;->_set_mContentProvider(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearSettingProvider()V
    .registers 1

    .line 98
    invoke-static {}, Lblack/android/providers/BRSettingsSystem;->get()Lblack/android/providers/SettingsSystemStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/providers/SettingsSystemStatic;->sNameValueCache()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 100
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    .line 102
    :cond_d
    invoke-static {}, Lblack/android/providers/BRSettingsSecure;->get()Lblack/android/providers/SettingsSecureStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/providers/SettingsSecureStatic;->sNameValueCache()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 104
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    .line 106
    :cond_1a
    invoke-static {}, Lblack/android/providers/BRSettingsGlobal;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 107
    invoke-static {}, Lblack/android/providers/BRSettingsGlobal;->get()Lblack/android/providers/SettingsGlobalStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/providers/SettingsGlobalStatic;->sNameValueCache()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 109
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public static init()V
    .registers 9

    .line 70
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearSettingProvider()V

    .line 72
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 73
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/ActivityThreadContext;->mProviderMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 76
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lblack/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v2

    invoke-interface {v2}, Lblack/android/app/ActivityThreadProviderClientRecordPContext;->mNames()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 78
    array-length v3, v2

    if-gtz v3, :cond_45

    goto :goto_2d

    :cond_45
    const/4 v3, 0x0

    .line 81
    aget-object v2, v2, v3

    .line 82
    sget-object v4, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->sInjected:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    goto :goto_2d

    .line 85
    :cond_51
    invoke-static {v1}, Lblack/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v5

    invoke-interface {v5}, Lblack/android/app/ActivityThreadProviderClientRecordPContext;->mProvider()Landroid/os/IInterface;

    move-result-object v5

    if-eqz v5, :cond_84

    .line 86
    instance-of v6, v5, Ljava/lang/reflect/Proxy;

    if-eqz v6, :cond_60

    goto :goto_84

    .line 90
    :cond_60
    invoke-static {v1}, Lblack/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v6

    new-instance v7, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;

    invoke-direct {v7}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    invoke-interface {v6, v5}, Lblack/android/app/ActivityThreadProviderClientRecordPContext;->_set_mProvider(Ljava/lang/Object;)V

    .line 91
    invoke-static {v1}, Lblack/android/app/BRActivityThreadProviderClientRecordP;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadProviderClientRecordPContext;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-interface {v1, v5}, Lblack/android/app/ActivityThreadProviderClientRecordPContext;->_set_mNames(Ljava/lang/Object;)V

    .line 92
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 87
    :cond_84
    :goto_84
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_88
    return-void
.end method

.method public static update(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_5c

    .line 44
    :cond_3
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    invoke-static {p0}, Lblack/android/content/BRContentProviderHolderOreo;->get(Ljava/lang/Object;)Lblack/android/content/ContentProviderHolderOreoContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/content/ContentProviderHolderOreoContext;->provider()Landroid/os/IInterface;

    move-result-object v0

    goto :goto_1a

    .line 47
    :cond_12
    invoke-static {p0}, Lblack/android/app/BRIActivityManagerContentProviderHolder;->get(Ljava/lang/Object;)Lblack/android/app/IActivityManagerContentProviderHolderContext;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/IActivityManagerContentProviderHolderContext;->provider()Landroid/os/IInterface;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_5c

    .line 50
    instance-of v1, v0, Ljava/lang/reflect/Proxy;

    if-eqz v1, :cond_21

    goto :goto_5c

    .line 54
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 59
    new-instance p1, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;

    invoke-direct {p1}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltop/niunaijun/blackbox/fake/service/context/providers/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    goto :goto_47

    .line 56
    :cond_3a
    new-instance p1, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;

    invoke-direct {p1}, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltop/niunaijun/blackbox/fake/service/context/providers/SettingsProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 62
    :goto_47
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 63
    invoke-static {p0}, Lblack/android/content/BRContentProviderHolderOreo;->get(Ljava/lang/Object;)Lblack/android/content/ContentProviderHolderOreoContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lblack/android/content/ContentProviderHolderOreoContext;->_set_provider(Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_55
    invoke-static {p0}, Lblack/android/app/BRIActivityManagerContentProviderHolder;->get(Ljava/lang/Object;)Lblack/android/app/IActivityManagerContentProviderHolderContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lblack/android/app/IActivityManagerContentProviderHolderContext;->_set_provider(Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    return-void
.end method
