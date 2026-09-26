.class final Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;
.super Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/core/system/pm/IntentResolver<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmServices(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 335
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;-><init>()V

    .line 435
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver-IA;)V
    .registers 2

    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method addService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V
    .registers 5

    .line 376
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 380
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 381
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->addFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 335
    check-cast p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;)Z

    move-result p0

    return p0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;)Z
    .registers 3

    .line 398
    iget-object p0, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->service:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 335
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    move-result-object p0

    return-object p0
.end method

.method protected newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;
    .registers 2

    .line 403
    new-array p0, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    return-object p0
.end method

.method protected newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 8

    .line 409
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->service:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    .line 410
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 414
    :cond_a
    iget v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {v0, v3, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateServiceInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    if-nez p3, :cond_17

    return-object v2

    .line 419
    :cond_17
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 420
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 421
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_28

    .line 422
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object p0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 424
    :cond_28
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    iput p0, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 425
    iget-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    iput p0, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 426
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 427
    iget-boolean p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->hasDefault:Z

    iput-boolean p0, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 428
    iget p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->labelRes:I

    iput p0, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 429
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p0, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 430
    iget p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->icon:I

    iput p0, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method protected bridge synthetic newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 335
    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
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

    .line 346
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    .line 347
    :goto_a
    invoke-super {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_5

    const/high16 v0, 0x10000

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 340
    :goto_6
    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
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

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 357
    :cond_4
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_f

    const/4 p3, 0x1

    move v4, p3

    goto :goto_10

    :cond_f
    move v4, v0

    .line 359
    :goto_10
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_19
    if-ge v0, p3, :cond_3a

    .line 364
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    .line 365
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 367
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 368
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 369
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3a
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 372
    invoke-super/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method removeService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V
    .registers 5

    .line 386
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 390
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 391
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->removeFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method
