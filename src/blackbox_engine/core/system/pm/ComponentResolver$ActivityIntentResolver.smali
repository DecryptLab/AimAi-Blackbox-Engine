.class final Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;
.super Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/core/system/pm/IntentResolver<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivities(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddActivity(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->addActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveActivity(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->removeActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 440
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;-><init>()V

    .line 544
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver-IA;)V
    .registers 2

    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>()V

    return-void
.end method

.method private addActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_2d

    .line 485
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    if-eqz p3, :cond_27

    .line 486
    const-string v3, "activity"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 487
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_27
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->addFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2d
    return-void
.end method

.method private removeActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V
    .registers 5

    .line 494
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p2, :cond_20

    .line 497
    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 498
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->removeFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method


# virtual methods
.method protected isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;)Z
    .registers 3

    .line 505
    iget-object p0, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
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

    .line 440
    check-cast p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;)Z

    move-result p0

    return p0
.end method

.method protected newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;
    .registers 2

    .line 510
    new-array p0, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    return-object p0
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

    .line 440
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    move-result-object p0

    return-object p0
.end method

.method protected newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 8

    .line 515
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 516
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 520
    :cond_a
    iget v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 521
    invoke-virtual {v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {v0, v3, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    if-nez p3, :cond_17

    return-object v2

    .line 526
    :cond_17
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 527
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 528
    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_28

    .line 529
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object p0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 531
    :cond_28
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    iput p0, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 532
    iget-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    iput p0, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 535
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 536
    iget-boolean p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->hasDefault:Z

    iput-boolean p0, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 537
    iget p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->labelRes:I

    iput p0, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 538
    iget-object p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p0, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 539
    iget p0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->icon:I

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

    .line 440
    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

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

    .line 451
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    .line 452
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

    .line 445
    :goto_6
    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 446
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
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 462
    :cond_4
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_f

    const/4 p3, 0x1

    move v4, p3

    goto :goto_10

    :cond_f
    move v4, v0

    .line 464
    :goto_10
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 465
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_19
    if-ge v0, p3, :cond_3a

    .line 469
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    .line 470
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 472
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 473
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 474
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3a
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 477
    invoke-super/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class top.niunaijun.blackbox.core.system.pm.ComponentResolver.ProviderIntentResolver (top.niunaijun.blackbox.core.system.pm.ComponentResolver$ProviderIntentResolver)
