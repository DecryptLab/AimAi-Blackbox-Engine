.class public Ltop/niunaijun/blackbox/entity/UnbindRecord;
.super Ljava/lang/Object;
.source "UnbindRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/UnbindRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ltop/niunaijun/blackbox/entity/UnbindRecord$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/UnbindRecord$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mStartId:I

    .line 51
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 28
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getStartId()I
    .registers 1

    .line 20
    iget p0, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mStartId:I

    return p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .registers 2

    .line 32
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setStartId(I)V
    .registers 2

    .line 24
    iput p1, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mStartId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 45
    iget v0, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mStartId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/UnbindRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class top.niunaijun.blackbox.entity.UnbindRecord.AnonymousClass1 (top.niunaijun.blackbox.entity.UnbindRecord$1)
