.class public abstract Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z = false

.field private static final localVerificationLOGV:Z = false

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 691
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 708
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 715
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 724
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 729
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 735
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 740
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 460
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 462
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-result-object p0

    .line 463
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    aput-object p3, p0, v2

    return-void

    .line 466
    :cond_14
    array-length v3, v0

    move v4, v3

    :goto_16
    if-lez v4, :cond_21

    add-int/lit8 v5, v4, -0x1

    .line 468
    aget-object v5, v0, v5

    if-nez v5, :cond_21

    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    :cond_21
    if-ge v4, v3, :cond_26

    .line 472
    aput-object p3, v0, v4

    return-void

    :cond_26
    mul-int/lit8 v4, v3, 0x3

    .line 474
    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-result-object p0

    .line 475
    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    aput-object p3, p0, v3

    .line 477
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 620
    array-length v5, v1

    move v11, v5

    goto :goto_19

    :cond_18
    move v11, v3

    :goto_19
    move v12, v3

    move v13, v12

    .line 624
    :goto_1b
    const-string v15, "IntentResolver"

    if-ge v12, v11, :cond_101

    aget-object v3, v1, v12

    if-eqz v3, :cond_101

    if-eqz p3, :cond_37

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Matching against filter "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-eqz v10, :cond_5a

    .line 636
    invoke-virtual {v0, v10, v3}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z

    move-result v5

    if-nez v5, :cond_5a

    if-eqz p3, :cond_67

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  Filter is not from package "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; skipping"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 644
    :cond_5a
    invoke-virtual {v0, v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->allowFilterResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_6b

    if-eqz p3, :cond_67

    .line 646
    const-string v3, "  Filter\'s target already added"

    invoke-static {v15, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    move/from16 v5, p9

    goto/16 :goto_fd

    :cond_6b
    move-object v5, v3

    .line 651
    iget-object v3, v5, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    const-string v9, "IntentResolver"

    move-object/from16 v8, p2

    move-object/from16 v6, p6

    move-object v14, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_d6

    .line 653
    const-string v5, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_a7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  Filter matched!  match=0x"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " hasDefault="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v14, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 655
    invoke-virtual {v8, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 653
    invoke-static {v15, v6}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    if-eqz p4, :cond_b6

    .line 656
    iget-object v6, v14, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    goto :goto_b6

    :cond_b2
    move/from16 v5, p9

    const/4 v13, 0x1

    goto :goto_fd

    :cond_b6
    :goto_b6
    move/from16 v5, p9

    .line 657
    invoke-virtual {v0, v14, v3, v5}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;

    move-result-object v3

    if-eqz p3, :cond_d0

    .line 658
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "    Created result: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    if-eqz v3, :cond_fd

    .line 660
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    :cond_d6
    move/from16 v5, p9

    if-eqz p3, :cond_fd

    const/4 v6, -0x4

    if-eq v3, v6, :cond_f2

    const/4 v6, -0x3

    if-eq v3, v6, :cond_ef

    const/4 v6, -0x2

    if-eq v3, v6, :cond_ec

    const/4 v6, -0x1

    if-eq v3, v6, :cond_e9

    .line 673
    const-string v3, "unknown reason"

    goto :goto_f4

    .line 672
    :cond_e9
    const-string v3, "type"

    goto :goto_f4

    .line 671
    :cond_ec
    const-string v3, "data"

    goto :goto_f4

    .line 669
    :cond_ef
    const-string v3, "action"

    goto :goto_f4

    .line 670
    :cond_f2
    const-string v3, "category"

    .line 675
    :goto_f4
    const-string v6, "  Filter did not match: "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    :goto_fd
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1b

    :cond_101
    if-eqz p3, :cond_11d

    if-eqz v13, :cond_11d

    .line 681
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_111

    .line 682
    const-string v0, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v15, v0}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 683
    :cond_111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11d

    .line 684
    const-string v0, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v15, v0}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    return-void
.end method

.method private collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_21

    const/4 v0, 0x0

    .line 113
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_21

    .line 114
    aget-object v1, p1, v0

    if-nez v1, :cond_c

    goto :goto_21

    .line 118
    :cond_c
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v2, p2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-nez p0, :cond_1b

    .line 120
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :cond_1b
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_21
    :goto_21
    return-object p0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .registers 6

    .line 72
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    move v1, v2

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 82
    :cond_1d
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 83
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-eq v0, v1, :cond_28

    return v2

    :cond_28
    move v1, v2

    :goto_29
    if-ge v1, v0, :cond_39

    .line 88
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    return v2

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 92
    :cond_39
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-eq v0, v1, :cond_44

    return v2

    :cond_44
    move v1, v2

    :goto_45
    if-ge v1, v0, :cond_55

    .line 98
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    return v2

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 102
    :cond_55
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p0

    .line 103
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p1

    if-eq p0, p1, :cond_60

    return v2

    :cond_60
    const/4 p0, 0x1

    return p0
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_8
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private final register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_4

    return p4

    .line 550
    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 551
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 554
    invoke-direct {p0, p3, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_4

    :cond_16
    return p4
.end method

.method private final register_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 483
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return v0

    :cond_a
    move v1, v0

    .line 489
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 490
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2a

    .line 496
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 498
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 501
    :goto_40
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    if-lez v3, :cond_4d

    .line 504
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_b

    .line 506
    :cond_4d
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_b

    :cond_53
    return v1
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 577
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v0, :cond_46

    .line 579
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_14

    .line 580
    aget-object v2, v0, v1

    if-nez v2, :cond_14

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_14
    move v2, v1

    :goto_15
    if-ltz v1, :cond_2c

    .line 584
    aget-object v3, v0, v1

    if-ne v3, p3, :cond_29

    sub-int v3, v2, v1

    if-lez v3, :cond_24

    add-int/lit8 v4, v1, 0x1

    .line 587
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    const/4 v3, 0x0

    .line 589
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_2c
    if-gez v2, :cond_32

    .line 594
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 595
    :cond_32
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_46

    add-int/lit8 p3, v2, 0x2

    .line 596
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    const/4 p3, 0x0

    .line 597
    invoke-static {v0, p3, p0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    return-void
.end method

.method private final unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_4

    return p4

    .line 566
    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 567
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 570
    invoke-direct {p0, p3, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_16
    return p4
.end method

.method private final unregister_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 514
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return v0

    :cond_a
    move v1, v0

    .line 520
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 521
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 525
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2a

    .line 527
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_40

    .line 529
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 532
    :goto_40
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_4d

    .line 535
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    .line 537
    :cond_4d
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_53
    return v1
.end method


# virtual methods
.method public addFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 60
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_2a

    if-nez v1, :cond_2a

    .line 62
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_2a
    if-eqz v1, :cond_39

    .line 66
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method protected allowFilterResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 187
    :goto_3a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v11, v14, :cond_140

    .line 188
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    .line 189
    array-length v15, v14

    .line 192
    const-string v8, ":"

    if-eqz p8, :cond_da

    if-nez p7, :cond_da

    .line 193
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    const/4 v9, 0x0

    :goto_51
    if-ge v9, v15, :cond_94

    move/from16 v16, v9

    .line 194
    aget-object v9, v14, v16

    if-eqz v9, :cond_94

    if-eqz v4, :cond_67

    .line 195
    invoke-virtual {v0, v4, v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z

    move-result v17

    if-nez v17, :cond_67

    move-object/from16 v17, v10

    move/from16 v18, v12

    const/4 v12, 0x1

    goto :goto_8d

    .line 198
    :cond_67
    invoke-virtual {v0, v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterToLabel(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v10

    .line 199
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_7f

    .line 201
    new-instance v10, Landroid/util/MutableInt;

    move/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    :cond_7f
    move/from16 v18, v12

    const/4 v12, 0x1

    .line 203
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/MutableInt;

    iget v10, v9, Landroid/util/MutableInt;->value:I

    add-int/2addr v10, v12

    iput v10, v9, Landroid/util/MutableInt;->value:I

    :goto_8d
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v10, v17

    move/from16 v12, v18

    goto :goto_51

    :cond_94
    move-object/from16 v17, v10

    move/from16 v18, v12

    const/4 v12, 0x1

    move-object/from16 v10, v17

    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 206
    :goto_9d
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v9, v15, :cond_d5

    if-eqz v10, :cond_ac

    .line 208
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_ac
    if-nez v14, :cond_be

    .line 212
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v14, v12

    .line 216
    :cond_be
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/util/MutableInt;

    iget v12, v12, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v2, v15, v12}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto :goto_9d

    :cond_d5
    move-object/from16 v17, v7

    move/from16 v12, v18

    goto :goto_13a

    :cond_da
    move-object/from16 v17, v10

    move/from16 v18, v12

    move-object/from16 v10, v17

    move/from16 v12, v18

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_e5
    move-object/from16 v17, v7

    if-ge v9, v15, :cond_13a

    .line 219
    aget-object v7, v14, v9

    if-eqz v7, :cond_13a

    if-eqz v4, :cond_f6

    .line 220
    invoke-virtual {v0, v4, v7}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z

    move-result v18

    if-nez v18, :cond_f6

    goto :goto_135

    :cond_f6
    if-eqz v10, :cond_ff

    .line 224
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_ff
    if-nez v16, :cond_112

    .line 228
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 232
    :cond_112
    invoke-virtual {v0, v1, v2, v7}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    if-eqz p7, :cond_134

    if-nez v13, :cond_11e

    .line 235
    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 237
    :cond_11e
    iget-object v7, v7, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_134
    const/4 v12, 0x1

    :goto_135
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v17

    goto :goto_e5

    :cond_13a
    :goto_13a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v17

    goto/16 :goto_3a

    :cond_140
    move/from16 v18, v12

    return v18
.end method

.method public filterIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 274
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;-><init>(Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 281
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected filterToLabel(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 452
    const-string p0, "IntentFilter"

    return-object p0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 132
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 133
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_36

    .line 135
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 136
    :cond_36
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_59

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_59

    .line 137
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 139
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 142
    :cond_59
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_60
    :goto_60
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    .line 143
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v2

    if-eqz v2, :cond_60

    if-nez v0, :cond_7b

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :cond_7b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_7f
    return-object v0
.end method

.method protected isFilterStopped(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 307
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v10, 0x0

    if-eqz v1, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v10

    .line 312
    :goto_19
    const-string v11, "IntentResolver"

    if-eqz v3, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Resolving type="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " scheme="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " defaultOnly="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " userId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_5e
    move-object/from16 v7, p1

    move/from16 v4, p3

    move/from16 v9, p4

    :goto_64
    if-eqz v5, :cond_15a

    const/16 v12, 0x2f

    .line 324
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-lez v12, :cond_15a

    .line 326
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 327
    const-string v14, "*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12f

    .line 328
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v1, v12, 0x2

    const/16 v17, 0x1

    const-string v2, "Second type cut: "

    const-string v10, "First type cut: "

    if-ne v15, v1, :cond_d0

    add-int/lit8 v12, v12, 0x1

    .line 329
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x2a

    if-eq v1, v12, :cond_93

    goto :goto_d0

    .line 339
    :cond_93
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_b1

    .line 340
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_b1
    iget-object v10, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_10c

    .line 342
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v11, v2}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10c

    .line 332
    :cond_d0
    :goto_d0
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_ee

    .line 333
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_ee
    iget-object v10, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_10c

    .line 335
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v11, v2}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_10c
    :goto_10c
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_12c

    .line 348
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Third type cut: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    move-object v12, v10

    move-object v10, v2

    goto :goto_15d

    .line 349
    :cond_12f
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15a

    .line 353
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_15b

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Typed Action list: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    :cond_15a
    const/4 v1, 0x0

    :cond_15b
    :goto_15b
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_15d
    if-eqz v6, :cond_182

    .line 363
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_17f

    .line 364
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Scheme list: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17f
    move-object/from16 v16, v2

    goto :goto_184

    :cond_182
    const/16 v16, 0x0

    :goto_184
    if-nez v5, :cond_1b2

    if-nez v6, :cond_1b2

    .line 370
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b2

    .line 371
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v3, :cond_1b2

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "Action list: "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1b2
    invoke-static {v7}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;

    move-result-object v2

    if-eqz v1, :cond_1c0

    move-object/from16 v18, v7

    move-object v7, v1

    move-object/from16 v1, v18

    .line 377
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_1c0
    if-eqz v12, :cond_1d0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v9, p4

    move-object v7, v12

    .line 381
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_1d0
    if-eqz v10, :cond_1e0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v9, p4

    move-object v7, v10

    .line 385
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_1e0
    move-object/from16 v0, p0

    if-eqz v16, :cond_1f1

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v9, p4

    move-object/from16 v7, v16

    .line 389
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    .line 392
    :cond_1f1
    invoke-virtual {v0, v8}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterResults(Ljava/util/List;)V

    if-eqz v3, :cond_21b

    .line 396
    const-string v0, "Final result list:"

    invoke-static {v11, v0}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .line 397
    :goto_1fc
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_21b

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_1fc

    :cond_21b
    return-object v8
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 286
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    move v3, v0

    goto :goto_12

    :cond_11
    move v3, v1

    .line 291
    :goto_12
    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;

    move-result-object v2

    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v1

    :goto_1f
    if-ge v11, v10, :cond_37

    move-object/from16 v12, p4

    .line 296
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move/from16 v4, p3

    move/from16 v9, p5

    .line 295
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 298
    :cond_37
    invoke-virtual {p0, v8}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterResults(Ljava/util/List;)V

    return-object v8
.end method

.method public removeFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->removeFilterInternal(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    .line 156
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeFilterInternal(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 168
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_25

    if-nez v1, :cond_25

    .line 170
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_25
    if-eqz v1, :cond_34

    .line 174
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 438
    sget-object p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.pm.IntentResolver.AnonymousClass1 (top.niunaijun.blackbox.core.system.pm.IntentResolver$1)
