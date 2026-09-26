.class public Ltop/niunaijun/blackbox/utils/MethodParameterUtils;
.super Ljava/lang/Object;
.source "MethodParameterUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 119
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    .line 120
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public static getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 127
    array-length v1, v0

    if-eqz v1, :cond_e

    .line 128
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 130
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1d

    .line 131
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getAllInterfaces(Ljava/lang/Class;Ljava/util/HashSet;)V

    :cond_1d
    return-void
.end method

.method public static getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 15
    :cond_4
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    .line 17
    aget-object p0, p0, p1

    return-object p0

    :cond_e
    return-object v0
.end method

.method public static getIndex([Ljava/lang/Object;Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, p1, v0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getIndex([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method public static getIndex([Ljava/lang/Object;Ljava/lang/Class;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 104
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_18

    .line 105
    aget-object v0, p0, p2

    if-eqz v0, :cond_e

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_e

    goto :goto_14

    .line 109
    :cond_e
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return p2

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public static getParamsIndex([Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 91
    aget-object v1, p0, v0

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static replaceAllAppPkg([Ljava/lang/Object;)V
    .registers 5

    if-nez p0, :cond_3

    goto :goto_29

    :cond_3
    const/4 v0, 0x0

    .line 42
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_29

    .line 43
    aget-object v1, p0, v0

    if-nez v1, :cond_c

    goto :goto_26

    .line 45
    :cond_c
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v2

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ltop/niunaijun/blackbox/BlackBoxCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 48
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_29
    :goto_29
    return-void
.end method

.method public static replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 26
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 27
    aget-object v2, p0, v1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v3

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ltop/niunaijun/blackbox/BlackBoxCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 30
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    return-object v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_28
    return-object v0
.end method

.method public static replaceFirstUid([Ljava/lang/Object;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_26

    :cond_3
    const/4 v0, 0x0

    .line 57
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_26

    .line 58
    aget-object v1, p0, v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_23

    .line 59
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 60
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v2

    if-ne v1, v2, :cond_23

    .line 61
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_26
    :goto_26
    return-void
.end method

.method public static replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 78
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 80
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v2

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ltop/niunaijun/blackbox/BlackBoxCore;->isInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 82
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    :cond_21
    return-object v1

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static replaceLastUid([Ljava/lang/Object;)V
    .registers 4

    .line 68
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/ArrayUtils;->indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 70
    aget-object v1, p0, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 71
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result v2

    if-ne v1, v2, :cond_21

    .line 72
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_21
    return-void
.end method
