.class public Ltop/niunaijun/blackbox/core/system/accounts/BAccount;
.super Ljava/lang/Object;
.source "BAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/accounts/BAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public account:Landroid/accounts/Account;

.field public accountUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public authTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public password:Ljava/lang/String;

.field public updateLastAuthenticatedTime:J

.field public visibility:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/accounts/BAccount$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->authTokens:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->authTokens:Ljava/util/HashMap;

    .line 58
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->password:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->authTokens:Ljava/util/HashMap;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->updateLastAuthenticatedTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public insertExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 27
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isMatch(Landroid/accounts/Account;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 23
    :cond_4
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-virtual {p1, p0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 46
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->password:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->authTokens:Ljava/util/HashMap;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->updateLastAuthenticatedTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 37
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->accountUserData:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 40
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->visibility:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 41
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->authTokens:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 42
    iget-wide v0, p0, Ltop/niunaijun/blackbox/core/system/accounts/BAccount;->updateLastAuthenticatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

###### Class top.niunaijun.blackbox.core.system.accounts.BAccount.AnonymousClass1 (top.niunaijun.blackbox.core.system.accounts.BAccount$1)
