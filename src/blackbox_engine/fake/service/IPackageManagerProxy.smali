.class public Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;
.source "IPackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$getComponentEnabledSetting;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetSharedLibraries;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetInstallerPackageName;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetNamesForUids;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetNameForUid;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetPackagesForUid;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$CanRequestPackageInstalls;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$ResolveContentProvider;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryBroadcastReceivers;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryContentProviders;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetApplicationInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetInstalledPackages;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetInstalledApplications;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetServiceInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetActivityInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetReceiverInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetProviderInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$HasUidSigningCertificate;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$HasSigningCertificate;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$CheckUidSignatures;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$CheckSignatures;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetPackageUid;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetPackageInfoVersioned;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$GetPackageInfo;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$SetComponentEnabledSetting;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryIntentServices;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$ResolveService;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$QueryIntentActivities;,
        Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy$ResolveIntent;
    }
.end annotation


# static fields
.field private static final PACKAGE_INFO_LIST_CLASS:Ljava/lang/String; = "android.content.pm.PackageInfoList"

.field public static final TAG:Ljava/lang/String; = "PackageManagerStub"


# direct methods
.method static bridge synthetic -$$Nest$smcanReadHostPackage(Landroid/content/ComponentName;)Z
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->canReadHostPackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcanReadHostPackage(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->canReadHostPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcompareVirtualSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->compareVirtualSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcreateInstalledPackagesResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->createInstalledPackagesResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->createResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetCertificate([Ljava/lang/Object;)[B
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getCertificate([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetCertificateType([Ljava/lang/Object;[B)I
    .registers 2

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getCertificateType([Ljava/lang/Object;[B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetLegacyFlags(Ljava/lang/Object;)I
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getLegacyFlags(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetVirtualSignatureInfoForUid(I)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getVirtualSignatureInfoForUid(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 132
    invoke-static {}, Lblack/android/app/BRActivityThread;->get()Lblack/android/app/ActivityThreadStatic;

    move-result-object v0

    invoke-interface {v0}, Lblack/android/app/ActivityThreadStatic;->sPackageManager()Landroid/os/IInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method private static canReadHostPackage(Landroid/content/ComponentName;)Z
    .registers 2

    .line 81
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isOpenPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 82
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isExternalAuthPackage(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static canReadHostPackage(Ljava/lang/String;)Z
    .registers 2

    .line 75
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isOpenPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 76
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isExternalAuthPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 77
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/env/AppSystemEnv;->isHostMetadataPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method private static compareVirtualSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 93
    invoke-static {p0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 94
    invoke-static {p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p0, :cond_1b

    if-nez p1, :cond_d

    goto :goto_1b

    .line 98
    :cond_d
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->signaturesMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x0

    return p0

    :cond_19
    const/4 p0, -0x3

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, -0x4

    return p0
.end method

.method private static createInstalledPackagesResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.pm.PackageInfoList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 62
    invoke-static {}, Lblack/android/content/pm/BRPackageInfoList;->getWithException()Lblack/android/content/pm/PackageInfoListStatic;

    move-result-object p0

    invoke-interface {p0, p1}, Lblack/android/content/pm/PackageInfoListStatic;->_new(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 64
    :cond_19
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createResolveInfoResult(Ljava/lang/reflect/Method;Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/compat/ParceledListSliceCompat;->isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 69
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method

.method private static getCertificate([Ljava/lang/Object;)[B
    .registers 2

    .line 119
    const-class v0, [B

    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/MethodParameterUtils;->getFirstParam([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method private static getCertificateType([Ljava/lang/Object;[B)I
    .registers 5

    const/4 v0, 0x0

    .line 123
    :goto_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 124
    aget-object v1, p0, v0

    if-ne v1, p1, :cond_19

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_19

    .line 125
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method private static getLegacyFlags(Ljava/lang/Object;)I
    .registers 5

    .line 53
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_12

    .line 56
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    .line 54
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Package manager flags must be numeric"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 86
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    const v1, 0x8000040

    .line 89
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getUserId()I

    move-result v2

    .line 86
    invoke-virtual {v0, p0, v1, v2}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getVirtualSignatureInfoForUid(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostUid()I

    move-result v0

    if-ne p0, v0, :cond_b

    .line 105
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->getBUid()I

    move-result p0

    goto :goto_f

    .line 106
    :cond_b
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    .line 107
    :goto_f
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getBPackageManager()Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/fake/frameworks/BPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2e

    aget-object v3, p0, v2

    .line 110
    invoke-static {v3}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->getVirtualSignatureInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 112
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2e
    return-object v0
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .registers 1

    .line 137
    invoke-static {}, Lblack/android/app/BRActivityThread;->get()Lblack/android/app/ActivityThreadStatic;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityThreadStatic;->sPackageManager()Landroid/os/IInterface;

    move-result-object p0

    return-object p0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 142
    invoke-static {}, Lblack/android/app/BRActivityThread;->get()Lblack/android/app/ActivityThreadStatic;

    move-result-object p1

    invoke-interface {p1, p2}, Lblack/android/app/ActivityThreadStatic;->_set_sPackageManager(Ljava/lang/Object;)V

    .line 143
    const-string p1, "package"

    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->replaceSystemService(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lblack/android/app/BRActivityThread;->get(Ljava/lang/Object;)Lblack/android/app/ActivityThreadContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ActivityThreadContext;->getSystemContext()Ljava/lang/Object;

    move-result-object p0

    .line 145
    invoke-static {p0}, Lblack/android/app/BRContextImpl;->get(Ljava/lang/Object;)Lblack/android/app/ContextImplContext;

    move-result-object p0

    invoke-interface {p0}, Lblack/android/app/ContextImplContext;->mPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 148
    :try_start_22
    const-string p1, "android.app.ApplicationPackageManager"

    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/Reflector;->on(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p1

    const-string v0, "mPM"

    .line 149
    invoke-virtual {p1, v0}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;

    move-result-object p1

    .line 150
    invoke-virtual {p1, p0, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    return-void
.end method

.method public isBadEnv()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindMethod()V
    .registers 4

    .line 164
    invoke-super {p0}, Ltop/niunaijun/blackbox/fake/hook/BinderInvocationStub;->onBindMethod()V

    .line 165
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "addOnPermissionsChangeListener"

    invoke-direct {v0, v2, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 166
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;

    const-string v2, "removeOnPermissionsChangeListener"

    invoke-direct {v0, v2, v1}, Ltop/niunaijun/blackbox/fake/service/base/ValueMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    .line 167
    new-instance v0, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;

    const-string v1, "shouldShowRequestPermissionRationale"

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/fake/service/base/PkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/fake/service/IPackageManagerProxy;->addMethodHook(Ltop/niunaijun/blackbox/fake/hook/MethodHook;)V

    return-void
.end method

###### Class top.niunaijun.blackbox.fake.service.IPackageManagerProxy.CanRequestPackageInstalls (top.niunaijun.blackbox.fake.service.IPackageManagerProxy$CanRequestPackageInstalls)
