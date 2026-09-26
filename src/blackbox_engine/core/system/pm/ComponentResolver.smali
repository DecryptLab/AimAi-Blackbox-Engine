.class public Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;,
        Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;,
        Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentResolver"


# instance fields
.field private final mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

.field private final mLock:Ljava/lang/Object;

.field private final mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

.field private final mProvidersByAuthority:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

.field private final mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    .line 39
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    .line 44
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    .line 49
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver-IA;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    return-void
.end method

.method private addActivitiesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage;",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2b

    .line 137
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 138
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 139
    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v4, "activity"

    invoke-static {v3, v2, v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$maddActivity(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    return-void
.end method

.method private addProvidersLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 15

    .line 145
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_c9

    .line 147
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 148
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 150
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v4, v3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->addProvider(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;)V

    .line 151
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v4, :cond_c5

    .line 152
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 153
    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 154
    array-length v6, v4

    move v8, v1

    :goto_3e
    if-ge v8, v6, :cond_c5

    aget-object v9, v4, v8

    .line 155
    iget-object v10, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 163
    iget-object v11, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    if-nez v10, :cond_78

    .line 156
    invoke-virtual {v11, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v10, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v10, :cond_5a

    .line 158
    iget-object v10, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_c1

    .line 160
    :cond_5a
    iget-object v10, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_c1

    .line 164
    :cond_78
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    if-eqz v10, :cond_8b

    .line 166
    invoke-virtual {v10}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_8b

    .line 167
    invoke-virtual {v10}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_8c

    :cond_8b
    move-object v10, v7

    :goto_8c
    if-eqz v10, :cond_93

    .line 169
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_95

    :cond_93
    const-string v10, "?"

    .line 170
    :goto_95
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Skipping provider name "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (in package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "): name already used by "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ComponentResolver"

    invoke-static {v10, v9}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3e

    :cond_c5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_c9
    return-void
.end method

.method private addReceiversLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 8

    .line 180
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2c

    .line 182
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 183
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 185
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v4, "receiver"

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$maddActivity(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    return-void
.end method

.method private addServicesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 8

    .line 190
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_29

    .line 192
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    .line 193
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->addService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    return-void
.end method

.method private removeAllComponentsLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 10

    .line 92
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    .line 95
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 96
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-static {v4, v3, v5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$mremoveActivity(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 98
    :cond_1c
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_23
    if-ge v2, v0, :cond_65

    .line 101
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 102
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v4, v3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->removeProvider(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;)V

    .line 103
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v4, :cond_39

    goto :goto_62

    .line 109
    :cond_39
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 110
    :goto_44
    array-length v6, v4

    .line 115
    iget-object v7, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    if-ge v5, v6, :cond_5b

    .line 111
    aget-object v6, v4, v5

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_58

    .line 112
    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 115
    :cond_5b
    iget-object v3, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 118
    :cond_65
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_6c
    if-ge v2, v0, :cond_80

    .line 121
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 122
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "receiver"

    invoke-static {v4, v3, v5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$mremoveActivity(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 125
    :cond_80
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_86
    if-ge v1, v0, :cond_98

    .line 128
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    .line 129
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->removeService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    :cond_98
    return-void
.end method


# virtual methods
.method addAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 4

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_8
    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addActivitiesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;Ljava/util/List;)V

    .line 62
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addServicesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 63
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addProvidersLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 64
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addReceiversLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 65
    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw p0
.end method

.method getActivity(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;
    .registers 3

    .line 204
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$fgetmActivities(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 206
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method getProvider(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;
    .registers 3

    .line 213
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->-$$Nest$fgetmProviders(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 215
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method getReceiver(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;
    .registers 3

    .line 222
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->-$$Nest$fgetmActivities(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 224
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method getService(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;
    .registers 3

    .line 231
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->-$$Nest$fgetmServices(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 239
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual/range {p0 .. p5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 247
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    throw p0
.end method

.method queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 5

    .line 298
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    .line 301
    monitor-exit v0

    return-object p0

    .line 303
    :cond_10
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 304
    invoke-virtual {p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    invoke-static {p0, p2, p1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    .line 305
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual/range {p0 .. p5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 260
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    throw p0
.end method

.method queryProviders(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_8
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->-$$Nest$fgetmProviders(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_5d

    .line 268
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->-$$Nest$fgetmProviders(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 269
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v4, :cond_29

    goto :goto_5a

    .line 273
    :cond_29
    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v5, :cond_30

    goto :goto_5a

    :cond_30
    if-eqz p1, :cond_3d

    .line 276
    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_5a

    :cond_3d
    if-eqz p2, :cond_4c

    .line 280
    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_5a

    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    .line 281
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto :goto_5a

    .line 284
    :cond_4c
    invoke-virtual {v4, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v4

    invoke-static {v3, p3, v4, p4}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_57

    goto :goto_5a

    .line 291
    :cond_57
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 293
    :cond_5d
    monitor-exit v1

    return-object v0

    :catchall_5f
    move-exception p0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 311
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual/range {p0 .. p5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 318
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    throw p0
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 324
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_3
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual/range {p0 .. p5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 331
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    throw p0
.end method

.method removeAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 3

    .line 69
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponentsLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method replaceAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .registers 5

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_d

    .line 78
    :try_start_a
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponentsLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 80
    :cond_d
    invoke-direct {p0, p2, v0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addActivitiesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;Ljava/util/List;)V

    .line 81
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addServicesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 82
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addProvidersLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 83
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addReceiversLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 84
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw p0
.end method

###### Class top.niunaijun.blackbox.core.system.pm.ComponentResolver.ActivityIntentResolver (top.niunaijun.blackbox.core.system.pm.ComponentResolver$ActivityIntentResolver)
