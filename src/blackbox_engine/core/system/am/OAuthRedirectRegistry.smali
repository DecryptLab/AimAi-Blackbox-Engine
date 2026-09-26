.class final Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;
.super Ljava/lang/Object;
.source "OAuthRedirectRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;
    }
.end annotation


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final HASH_FLAGS:I = 0xb

.field private static final HASH_SEPARATOR:C = '\u0000'

.field private static final KEY_PREFIX:Ljava/lang/String; = "route_"

.field private static final MAX_ROUTES:I = 0x40

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "blackbox_oauth_redirects"

.field private static final ROUTE_TTL_MILLIS:J = 0x927c0L

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = "|"


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "blackbox_oauth_redirects"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string p0, "route_"

    .line 119
    :try_start_2
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/16 p1, 0xb

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_3b} :catch_3c

    return-object p0

    :catch_3c
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SHA-256 is unavailable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private hasKnownRouteForPackage(Ljava/util/Map;Ljava/lang/String;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->parseRoute(Ljava/lang/String;Ljava/lang/Object;)Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 108
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetpackageName(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetcreatedAt(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)J

    move-result-wide v0

    .line 110
    invoke-direct {p0, v0, v1, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->isExpired(JJ)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method private isExpired(JJ)Z
    .registers 5

    cmp-long p0, p1, p3

    if-gtz p0, :cond_f

    sub-long/2addr p3, p1

    const-wide/32 p0, 0x927c0

    cmp-long p0, p3, p0

    if-lez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private parseRoute(Ljava/lang/String;Ljava/lang/Object;)Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;
    .registers 12

    .line 132
    const-string p0, "route_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_53

    instance-of p0, p2, Ljava/lang/String;

    if-nez p0, :cond_e

    goto :goto_53

    .line 135
    :cond_e
    check-cast p2, Ljava/lang/String;

    .line 136
    const-string p0, "|"

    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 137
    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-lez v0, :cond_53

    if-le p0, v1, :cond_53

    .line 139
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p0, v2, :cond_29

    goto :goto_53

    :cond_29
    const/4 v2, 0x0

    .line 143
    :try_start_2a
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 p0, p0, 0x1

    .line 145
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    if-gez v5, :cond_45

    const/4 p0, -0x2

    if-ne v5, p0, :cond_4b

    :cond_45
    const-wide/16 v0, 0x0

    cmp-long p0, v6, v0

    if-gtz p0, :cond_4c

    :cond_4b
    return-object p1

    .line 149
    :cond_4c
    new-instance v3, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;-><init>(Ljava/lang/String;IJLtop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry-IA;)V
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_52} :catch_53

    return-object v3

    :catch_53
    :cond_53
    :goto_53
    return-object p1
.end method

.method private serialize(Ljava/lang/String;IJ)Ljava/lang/String;
    .registers 5

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method declared-synchronized consume(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    monitor-enter p0

    .line 66
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_ab

    invoke-static {p2}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->isValidState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_ab

    .line 69
    :cond_10
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 71
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, -0x1

    if-nez v2, :cond_2f

    .line 74
    invoke-direct {p0, v0, p1, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->hasKnownRouteForPackage(Ljava/util/Map;Ljava/lang/String;J)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_ad

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v5

    :goto_2d
    monitor-exit p0

    return v1

    .line 78
    :cond_2f
    :try_start_2f
    invoke-direct {p0, p2, v2}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->parseRoute(Ljava/lang/String;Ljava/lang/Object;)Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 79
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetpackageName(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_9c

    .line 83
    :cond_40
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetuserId(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)I

    move-result v2

    if-ne v2, v1, :cond_65

    .line 84
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetcreatedAt(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->isExpired(JJ)Z

    move-result p1
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_ad

    if-nez p1, :cond_52

    .line 85
    monitor-exit p0

    return v1

    .line 87
    :cond_52
    :try_start_52
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_ad

    if-eqz p1, :cond_63

    move v1, v5

    :cond_63
    monitor-exit p0

    return v1

    .line 91
    :cond_65
    :try_start_65
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetcreatedAt(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->isExpired(JJ)Z

    move-result v2
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_ad

    .line 97
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_82

    .line 92
    :try_start_71
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    invoke-direct {p0, p1, v1, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->serialize(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_ad

    .line 95
    monitor-exit p0

    return v1

    .line 97
    :cond_82
    :try_start_82
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 98
    invoke-direct {p0, p1, v1, v3, v4}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->serialize(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_ad

    if-nez p1, :cond_96

    .line 100
    monitor-exit p0

    return v1

    .line 102
    :cond_96
    :try_start_96
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetuserId(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)I

    move-result p1
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_ad

    monitor-exit p0

    return p1

    .line 80
    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a9
    .catchall {:try_start_9c .. :try_end_a9} :catchall_ad

    .line 81
    monitor-exit p0

    return v1

    .line 67
    :cond_ab
    :goto_ab
    monitor-exit p0

    return v1

    :catchall_ad
    move-exception p1

    :try_start_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p1
.end method

.method declared-synchronized register(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 21

    move-object/from16 v1, p0

    move/from16 v0, p3

    monitor-enter p0

    .line 32
    :try_start_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a4

    invoke-static/range {p2 .. p2}, Ltop/niunaijun/blackbox/utils/FacebookRedirect;->isValidState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    if-gez v0, :cond_16

    goto/16 :goto_a4

    .line 35
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 36
    invoke-direct/range {p0 .. p2}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->createKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v6, v1, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 42
    iget-object v7, v1, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    :cond_38
    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->parseRoute(Ljava/lang/String;Ljava/lang/Object;)Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;

    move-result-object v12

    if-eqz v12, :cond_82

    .line 44
    invoke-static {v12}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetcreatedAt(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)J

    move-result-wide v13

    invoke-direct {v1, v13, v14, v4, v5}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->isExpired(JJ)Z

    move-result v13

    if-eqz v13, :cond_5f

    goto :goto_82

    .line 48
    :cond_5f
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6a

    goto :goto_38

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    .line 52
    invoke-static {v12}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetcreatedAt(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-gez v13, :cond_38

    .line 53
    invoke-static {v12}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;->-$$Nest$fgetcreatedAt(Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry$Route;)J

    move-result-wide v8

    .line 54
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-wide v15, v8

    move-object v8, v10

    move-wide v9, v15

    goto :goto_38

    .line 45
    :cond_82
    :goto_82
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v6, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_38

    :cond_8c
    const/16 v7, 0x40

    if-lt v3, v7, :cond_95

    if-eqz v8, :cond_95

    .line 59
    invoke-interface {v6, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_95
    move-object/from16 v3, p1

    .line 61
    invoke-direct {v1, v3, v0, v4, v5}, Ltop/niunaijun/blackbox/core/system/am/OAuthRedirectRegistry;->serialize(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_a6

    monitor-exit p0

    return v0

    .line 33
    :cond_a4
    :goto_a4
    monitor-exit p0

    return v3

    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0
.end method

###### Class top.niunaijun.blackbox.core.system.am.OAuthRedirectRegistry.Route (top.niunaijun.blackbox.core.system.am.OAuthRedirectRegistry$Route)
