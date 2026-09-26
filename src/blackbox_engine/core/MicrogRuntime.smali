.class public final Ltop/niunaijun/blackbox/core/MicrogRuntime;
.super Ljava/lang/Object;
.source "MicrogRuntime.java"


# static fields
.field public static final COMPANION_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field public static final EXPECTED_COMPANION_APK_BYTES:J = 0x46cc6bL

.field public static final EXPECTED_COMPANION_APK_SHA_256:Ljava/lang/String; = "a973e0235a2829773a4faf36d235d5f703d1c04a2adff674ebaa535a2e78f937"

.field public static final EXPECTED_GMS_APK_BYTES:J = 0x650a5a1L

.field public static final EXPECTED_GMS_APK_SHA_256:Ljava/lang/String; = "52597e77fd25fdd347574d0457ed1936a4b9561cf4c8d34e7ac8dd8191dfd4b9"

.field public static final GMS_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field private static final HASH_BUFFER_BYTES:I = 0x10000

.field private static final LEGACY_BACKUP_PACKAGE:Ljava/lang/String; = "com.google.android.backup"

.field private static final LEGACY_BACKUP_TRANSPORT_PACKAGE:Ljava/lang/String; = "com.google.android.backuptransport"

.field private static final LEGACY_CALENDAR_SYNC_PACKAGE:Ljava/lang/String; = "com.google.android.syncadapters.calendar"

.field private static final LEGACY_CLEANUP_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_CONFIG_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.configupdater"

.field private static final LEGACY_CONTACTS_SYNC_PACKAGE:Ljava/lang/String; = "com.google.android.syncadapters.contacts"

.field private static final LEGACY_FEEDBACK_PACKAGE:Ljava/lang/String; = "com.google.android.feedback"

.field private static final LEGACY_GSF_LOGIN_PACKAGE:Ljava/lang/String; = "com.google.android.gsf.login"

.field public static final LEGACY_GSF_PACKAGE:Ljava/lang/String; = "com.google.android.gsf"

.field private static final LEGACY_ONE_TIME_INITIALIZER_PACKAGE:Ljava/lang/String; = "com.google.android.onetimeinitializer"

.field private static final LEGACY_PARTNER_SETUP_PACKAGE:Ljava/lang/String; = "com.google.android.partnersetup"

.field private static final LEGACY_SETUP_WIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field public static final MIN_COMPANION_VERSION:J = 0x5021566L

.field public static final MIN_GMS_VERSION:J = 0xef4eb3eL

.field private static final SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "MicrogRuntime"

.field private static final USER_LOCKS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xb

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gsf"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gsf.login"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.backuptransport"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.backup"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.configupdater"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.android.syncadapters.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.feedback"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.onetimeinitializer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.partnersetup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.google.android.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.android.syncadapters.calendar"

    aput-object v2, v0, v1

    .line 46
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/core/MicrogRuntime;->LEGACY_CLEANUP_PACKAGES:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/MicrogRuntime;->USER_LOCKS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static activatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;I)Z
    .registers 5

    .line 170
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 171
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->success:Z

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    .line 172
    :cond_d
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to activate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p0, :cond_2d

    .line 173
    const-string p0, "no result"

    goto :goto_2f

    :cond_2d
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->msg:Ljava/lang/String;

    :goto_2f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 172
    const-string p1, "MicrogRuntime"

    invoke-static {p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static decodeHex(Ljava/lang/String;)[B
    .registers 7

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 212
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 213
    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 214
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_2e
    return-object v0
.end method

.method public static ensureReadyForUser(I)Z
    .registers 7

    .line 150
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->getUserLock(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_5
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isReadyForUser(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x1

    .line 152
    monitor-exit v0

    return p0

    .line 154
    :cond_e
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v1

    .line 155
    const-string v2, "com.google.android.gms"

    const-wide/32 v3, 0xef4eb3e

    invoke-static {v1, v2, v3, v4}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isAvailablePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    const-string v2, "com.android.vending"

    const-wide/32 v4, 0x5021566

    .line 156
    invoke-static {v1, v2, v4, v5}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isAvailablePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_43

    .line 160
    :cond_2a
    const-string v2, "com.google.android.gms"

    invoke-static {v1, v2, p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->activatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v2, "com.android.vending"

    .line 161
    invoke-static {v1, v2, p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->activatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_41

    .line 164
    :cond_3b
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isReadyForUser(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 162
    :cond_41
    :goto_41
    monitor-exit v0

    return v3

    .line 158
    :cond_43
    :goto_43
    monitor-exit v0

    return v3

    :catchall_45
    move-exception p0

    .line 165
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public static getLegacyCleanupPackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Ltop/niunaijun/blackbox/core/MicrogRuntime;->LEGACY_CLEANUP_PACKAGES:Ljava/util/List;

    return-object v0
.end method

.method private static getUserLock(I)Ljava/lang/Object;
    .registers 3

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 206
    sget-object v1, Ltop/niunaijun/blackbox/core/MicrogRuntime;->USER_LOCKS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_12

    return-object v0

    :cond_12
    return-object p0
.end method

.method private static isAvailablePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;J)Z
    .registers 6

    .line 190
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->getBPackageSetting(Ljava/lang/String;)Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 192
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    if-nez p1, :cond_11

    goto :goto_1b

    .line 194
    :cond_11
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p0, :cond_43

    .line 195
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    if-eqz v0, :cond_43

    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionCode:I

    int-to-long v0, v0

    cmp-long p2, v0, p2

    if-ltz p2, :cond_43

    if-eqz p1, :cond_43

    .line 199
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 200
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 201
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/pm/MicrogSignatureCompat;->isOfficialMicrogPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x1

    return p0

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method public static isLegacyCleanupPackage(Ljava/lang/String;)Z
    .registers 2

    .line 83
    sget-object v0, Ltop/niunaijun/blackbox/core/MicrogRuntime;->LEGACY_CLEANUP_PACKAGES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isManagedPackage(Ljava/lang/String;)Z
    .registers 2

    .line 91
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isRuntimePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isLegacyCleanupPackage(Ljava/lang/String;)Z

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

.method public static isReadyForUser(I)Z
    .registers 5

    .line 131
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    .line 132
    const-string v1, "com.google.android.gms"

    const-wide/32 v2, 0xef4eb3e

    invoke-static {v0, v1, v2, v3, p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isReadyPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;JI)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "com.android.vending"

    const-wide/32 v2, 0x5021566

    .line 133
    invoke-static {v0, v1, v2, v3, p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isReadyPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;JI)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private static isReadyPackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;JI)Z
    .registers 5

    .line 182
    invoke-virtual {p0, p1, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p0, 0x0

    return p0

    .line 185
    :cond_8
    invoke-static {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isAvailablePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isRuntimePackage(Ljava/lang/String;)Z
    .registers 2

    .line 78
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.android.vending"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isSignatureSpoofPackage(Ljava/lang/String;)Z
    .registers 2

    .line 95
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isVerifiedRuntimePackage(Ljava/lang/String;)Z
    .registers 5

    .line 138
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->get()Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;

    move-result-object v0

    .line 139
    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-wide/32 v2, 0xef4eb3e

    .line 140
    invoke-static {v0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isAvailablePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;J)Z

    move-result p0

    return p0

    .line 142
    :cond_14
    const-string v1, "com.android.vending"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-wide/32 v2, 0x5021566

    .line 143
    invoke-static {v0, v1, v2, v3}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->isAvailablePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;Ljava/lang/String;J)Z

    move-result p0

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static matchesPinnedArtifact(Ljava/lang/String;Ljava/io/File;)Z
    .registers 8

    .line 101
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-wide/32 v2, 0x650a5a1

    .line 103
    const-string p0, "52597e77fd25fdd347574d0457ed1936a4b9561cf4c8d34e7ac8dd8191dfd4b9"

    goto :goto_1c

    .line 104
    :cond_f
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_85

    const-wide/32 v2, 0x46cc6b

    .line 106
    const-string p0, "a973e0235a2829773a4faf36d235d5f703d1c04a2adff674ebaa535a2e78f937"

    :goto_1c
    if-eqz p1, :cond_85

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_33

    goto :goto_85

    .line 114
    :cond_33
    :try_start_33
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_70
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_38} :catch_67

    .line 115
    :try_start_38
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 116
    new-array v3, v3, [B

    .line 118
    :goto_42
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4d

    .line 119
    invoke-virtual {v2, v3, v1, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_42

    .line 121
    :cond_4d
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/MicrogRuntime;->decodeHex(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v2, p0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_5d

    .line 122
    :try_start_59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_70
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_59 .. :try_end_5c} :catch_67

    return p0

    :catchall_5d
    move-exception p0

    .line 114
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v0

    :try_start_63
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_66
    throw p0
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_70
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_63 .. :try_end_67} :catch_67

    :catch_67
    move-exception p0

    .line 126
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SHA-256 is unavailable"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_70
    move-exception p0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to hash runtime artifact: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicrogRuntime"

    invoke-static {v0, p1, p0}, Ltop/niunaijun/blackbox/utils/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_85
    :goto_85
    return v1
.end method
