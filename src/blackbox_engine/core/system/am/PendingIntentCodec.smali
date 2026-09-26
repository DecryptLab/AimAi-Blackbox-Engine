.class final Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;
.super Ljava/lang/Object;
.source "PendingIntentCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;
    }
.end annotation


# static fields
.field private static final CONTROL_FLAGS:I = 0x38000000

.field private static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final KEYSTORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KEY_SUFFIX:Ljava/lang/String; = ".blackbox.pending.hmac.v1"

.field private static final MAX_PAYLOAD_BYTES:I = 0xc0000

.field private static final PAYLOAD_VERSION:I = 0x1

.field private static final ROUTE_SUFFIX:Ljava/lang/String; = ".blackbox.pending."


# instance fields
.field private final context:Landroid/content/Context;

.field private final keyLock:Ljava/lang/Object;

.field private volatile secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->keyLock:Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->context:Landroid/content/Context;

    return-void
.end method

.method private static copyIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .registers 5

    .line 225
    array-length v0, p0

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    .line 226
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 227
    new-instance v2, Landroid/content/Intent;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    return-object v0
.end method

.method private encodeIdentity(ILjava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)[B
    .registers 10

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x1

    .line 115
    :try_start_5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 123
    move-object p3, p2

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p3, 0x0

    .line 125
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 128
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    invoke-virtual {p0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_41

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_41
    move-exception p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 133
    throw p1
.end method

.method private encodePayload(ILjava/lang/String;Ljava/lang/String;III[Landroid/content/Intent;[Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)[B
    .registers 13

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x1

    .line 142
    :try_start_5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {p0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    new-instance p1, Landroid/content/Intent;

    array-length p2, p7

    sub-int/2addr p2, v0

    aget-object p2, p7, p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 151
    move-object p3, p2

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p3, 0x0

    .line 153
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 156
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 157
    invoke-static {p8}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->lastResolvedType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_56

    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_56
    move-exception p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw p1
.end method

.method private static lastResolvedType([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    .line 220
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_c

    .line 221
    :cond_6
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return-object p0
.end method

.method static normalizeKeyFlags(I)I
    .registers 2

    const v0, -0x38000001

    and-int/2addr p0, v0

    return p0
.end method

.method private requireSecretKey()Ljavax/crypto/SecretKey;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_5

    return-object v0

    .line 177
    :cond_5
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_8
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_10

    .line 179
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->secretKey:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object p0

    .line 181
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".blackbox.pending.hmac.v1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_7c

    const/4 v3, 0x0

    .line 184
    :try_start_30
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_73
    .catchall {:try_start_30 .. :try_end_33} :catchall_7c

    .line 188
    :try_start_33
    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    if-nez v2, :cond_5f

    .line 190
    const-string v2, "HmacSHA256"

    const-string v3, "AndroidKeyStore"

    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 191
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v4, 0xc

    invoke-direct {v3, v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "SHA-256"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 193
    invoke-virtual {v3, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 191
    invoke-virtual {v2, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 195
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 197
    :cond_5f
    instance-of v1, v2, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_6b

    .line 200
    check-cast v2, Ljavax/crypto/SecretKey;

    iput-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->secretKey:Ljavax/crypto/SecretKey;

    .line 201
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->secretKey:Ljavax/crypto/SecretKey;

    monitor-exit v0

    return-object p0

    .line 198
    :cond_6b
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v1, "Invalid PendingIntent signing key"

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_73
    move-exception p0

    .line 186
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Unable to load Android Keystore"

    invoke-direct {v1, v2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_7c
    move-exception p0

    .line 202
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_33 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method private sign([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 168
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->requireSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 169
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7

    .line 233
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 234
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 235
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_26

    .line 236
    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v4, v4, 0x4

    .line 237
    aget-char v4, v0, v4

    aput-char v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 238
    aget-char v3, v0, v3

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 240
    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static validateIntents([Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_2e

    .line 206
    array-length v0, p0

    if-eqz v0, :cond_2e

    .line 209
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    if-eqz v2, :cond_16

    .line 210
    invoke-virtual {v2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 211
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid PendingIntent target"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    if-eqz p1, :cond_2d

    .line 214
    array-length p1, p1

    array-length p0, p0

    if-ne p1, p0, :cond_25

    goto :goto_2d

    .line 215
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Resolved type count does not match Intent count"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    :goto_2d
    return-void

    .line 207
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PendingIntent requires at least one Intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method decode(Ltop/niunaijun/blackbox/entity/am/PendingIntentData;)Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    if-eqz v9, :cond_11d

    .line 58
    iget-object v1, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    if-eqz v1, :cond_11d

    iget-object v1, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    if-eqz v1, :cond_11d

    iget-object v1, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->signature:[B

    if-eqz v1, :cond_11d

    iget-object v1, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    array-length v1, v1

    const/high16 v2, 0xc0000

    if-gt v1, v2, :cond_11d

    iget-object v1, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    .line 60
    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->sign([B)[B

    move-result-object v1

    iget-object v2, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->signature:[B

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_11d

    .line 63
    :cond_2a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 65
    :try_start_2e
    iget-object v1, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    iget-object v2, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->payload:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 66
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_3e} :catch_11a
    .catchall {:try_start_2e .. :try_end_3e} :catchall_115

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    .line 102
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-object v10

    .line 70
    :cond_45
    :try_start_45
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 72
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 73
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 74
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 75
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 76
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 77
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/Intent;

    .line 78
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    .line 80
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 81
    iget-object v3, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    iget-object v4, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    invoke-static {v3, v4}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->validateIntents([Landroid/content/Intent;[Ljava/lang/String;)V

    if-eqz v14, :cond_111

    if-eqz v22, :cond_111

    if-eqz v12, :cond_111

    .line 82
    iget-object v3, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->routeAction:Ljava/lang/String;

    .line 83
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    iget-object v3, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    iget-object v4, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    array-length v4, v4

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    .line 84
    invoke-virtual {v6, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_111

    iget-object v2, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    .line 86
    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->lastResolvedType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v7, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    goto :goto_111

    :cond_aa
    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v8, v19

    .line 89
    invoke-direct/range {v0 .. v8}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->encodeIdentity(ILjava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)[B

    move-result-object v6

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".blackbox.pending."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v0, v6}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->sign([B)[B

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->toHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0
    :try_end_e7
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_e7} :catch_11a
    .catchall {:try_start_45 .. :try_end_e7} :catchall_115

    if-nez v0, :cond_ed

    .line 102
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-object v10

    :cond_ed
    move-object/from16 v23, v12

    .line 95
    :try_start_ef
    new-instance v12, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;

    iget-object v0, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->intents:[Landroid/content/Intent;

    .line 96
    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->copyIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v20

    .line 97
    iget-object v0, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    if-nez v0, :cond_ff

    move-object/from16 v21, v10

    :goto_fd
    move v13, v1

    goto :goto_10a

    :cond_ff
    iget-object v0, v9, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;->resolvedTypes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    goto :goto_fd

    :goto_10a
    invoke-direct/range {v12 .. v23}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec$Payload;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_10d} :catch_11a
    .catchall {:try_start_ef .. :try_end_10d} :catchall_115

    .line 102
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-object v12

    :cond_111
    :goto_111
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    return-object v10

    :catchall_115
    move-exception v0

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 103
    throw v0

    .line 102
    :catch_11a
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    :cond_11d
    :goto_11d
    return-object v10
.end method

.method encode(ILjava/lang/String;Ljava/lang/String;III[Landroid/content/Intent;[Ljava/lang/String;ILandroid/content/ComponentName;)Ltop/niunaijun/blackbox/entity/am/PendingIntentData;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v9, p7

    .line 44
    invoke-static/range {p7 .. p8}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->validateIntents([Landroid/content/Intent;[Ljava/lang/String;)V

    .line 45
    invoke-static/range {p9 .. p9}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->normalizeKeyFlags(I)I

    move-result v8

    .line 46
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    aget-object v6, v9, v0

    .line 47
    invoke-static/range {p8 .. p8}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->lastResolvedType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    .line 46
    invoke-direct/range {v0 .. v8}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->encodeIdentity(ILjava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)[B

    move-result-object v6

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".blackbox.pending."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v6}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->sign([B)[B

    move-result-object v2

    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v10, p10

    move-object v7, v9

    move v9, v8

    move-object/from16 v8, p8

    .line 49
    invoke-direct/range {v0 .. v11}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->encodePayload(ILjava/lang/String;Ljava/lang/String;III[Landroid/content/Intent;[Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)[B

    move-result-object v1

    .line 51
    array-length v2, v1

    const/high16 v3, 0xc0000

    if-gt v2, v3, :cond_6d

    .line 54
    new-instance v2, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;

    invoke-direct {p0, v1}, Ltop/niunaijun/blackbox/core/system/am/PendingIntentCodec;->sign([B)[B

    move-result-object v0

    move-object/from16 p4, p7

    move-object/from16 p5, p8

    move-object p3, v0

    move-object p2, v1

    move-object p0, v2

    move-object p1, v11

    invoke-direct/range {p0 .. p5}, Ltop/niunaijun/blackbox/entity/am/PendingIntentData;-><init>(Ljava/lang/String;[B[B[Landroid/content/Intent;[Ljava/lang/String;)V

    move-object v0, p0

    return-object v0

    .line 52
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent payload exceeds Binder limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class top.niunaijun.blackbox.core.system.am.PendingIntentCodec.Payload (top.niunaijun.blackbox.core.system.am.PendingIntentCodec$Payload)
