.class public Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "OsStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/libcore/OsStub$stat;,
        Ltop/niunaijun/blackbox/fake/service/libcore/OsStub$getuid;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OsStub"


# instance fields
.field private final mBase:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$smgetFakeUid(I)I
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->getFakeUid(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    .line 33
    invoke-static {}, Lblack/libcore/io/BRLibcore;->get()Lblack/libcore/io/LibcoreStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/libcore/io/LibcoreStatic;->os()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

    return-void
.end method

.method private getBaseStat(Ljava/lang/String;Ljava/lang/String;)Landroid/system/StructStat;
    .registers 8

    .line 102
    :try_start_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 104
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/system/StructStat;
    :try_end_21
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_21} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFakeUid(I)I
    .registers 2

    if-lez p0, :cond_7

    const/16 v0, 0x2710

    if-gt p0, v0, :cond_7

    return p0

    .line 159
    :cond_7
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->isThreadInit()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object p0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 160
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBAppId()I

    move-result p0

    return p0

    .line 162
    :cond_1c
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result p0

    return p0
.end method

.method private static isGuestPath(Ljava/lang/String;)Z
    .registers 2

    .line 111
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getVirtualRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->isInside(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 112
    invoke-static {}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalVirtualRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->isInside(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static isInside(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    if-nez p1, :cond_6

    goto :goto_36

    .line 120
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_30} :catch_36

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    return v0

    :cond_34
    :goto_34
    const/4 p0, 0x1

    return p0

    :catch_36
    :cond_36
    :goto_36
    return v0
.end method

.method private static isPathOwnershipCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 75
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_33

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_33

    const/4 v2, 0x2

    aget-object p1, p1, v2

    instance-of p1, p1, Ljava/lang/Number;

    if-nez p1, :cond_1c

    goto :goto_33

    .line 79
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    .line 80
    const-string p1, "chown"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    const-string p1, "lchown"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    return v0

    :cond_32
    :goto_32
    return v1

    :cond_33
    :goto_33
    return v0
.end method

.method private translateOwnership(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 84
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->isGuestPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4f

    .line 88
    :cond_c
    const-string v1, "lchown"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "lstat"

    goto :goto_19

    :cond_17
    const-string p1, "stat"

    :goto_19
    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->getBaseStat(Ljava/lang/String;Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 89
    iget p1, p0, Landroid/system/StructStat;->st_uid:I

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v0

    if-eq p1, v0, :cond_28

    goto :goto_4f

    :cond_28
    const/4 p1, 0x1

    .line 92
    aget-object v0, p2, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    .line 93
    iget v0, p0, Landroid/system/StructStat;->st_uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p1

    :cond_3c
    const/4 p1, 0x2

    .line 95
    aget-object v0, p2, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_4f

    .line 96
    iget p0, p0, Landroid/system/StructStat;->st_gid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, p1

    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 38
    iget-object p0, p0, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->mBase:Ljava/lang/Object;

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 43
    invoke-static {}, Lblack/libcore/io/BRLibcore;->get()Lblack/libcore/io/LibcoreStatic;

    move-result-object p0

    invoke-interface {p0, p2}, Lblack/libcore/io/LibcoreStatic;->_set_os(Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-static {p2, p3}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->isPathOwnershipCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz p3, :cond_2e

    const/4 v1, 0x0

    .line 59
    :goto_7
    array-length v2, p3

    if-ge v1, v2, :cond_2e

    .line 60
    aget-object v2, p3, v1

    if-nez v2, :cond_f

    goto :goto_2b

    .line 63
    :cond_f
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2b

    check-cast v2, Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 64
    invoke-static {}, Ltop/niunaijun/blackbox/core/IOCore;->get()Ltop/niunaijun/blackbox/core/IOCore;

    move-result-object v2

    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltop/niunaijun/blackbox/core/IOCore;->redirectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2e
    if-eqz v0, :cond_37

    .line 69
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->translateOwnership(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_37
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isBadEnv()Z
    .registers 2

    .line 52
    invoke-static {}, Lblack/libcore/io/BRLibcore;->get()Lblack/libcore/io/LibcoreStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/libcore/io/LibcoreStatic;->os()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ltop/niunaijun/blackbox/fake/service/libcore/OsStub;->getProxyInvocation()Ljava/lang/Object;

    move-result-object p0

    if-eq v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 1

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.libcore.OsStub.getuid (top.niunaijun.blackbox.fake.service.libcore.OsStub$getuid)
