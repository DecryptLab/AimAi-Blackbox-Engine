.class final enum Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
.super Ljava/lang/Enum;
.source "BlackBoxCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/BlackBoxCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field public static final enum BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field public static final enum Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

.field public static final enum Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;


# direct methods
.method private static synthetic $values()[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
    .registers 3

    .line 359
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v1, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    sget-object v2, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    filled-new-array {v0, v1, v2}, [Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 363
    new-instance v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    const-string v1, "Server"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Server:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 367
    new-instance v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    const-string v1, "BAppClient"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->BAppClient:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 371
    new-instance v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    const-string v1, "Main"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->Main:Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    .line 359
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->$values()[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->$VALUES:[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 359
    const-class v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    return-object p0
.end method

.method public static values()[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;
    .registers 1

    .line 359
    sget-object v0, Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->$VALUES:[Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    invoke-virtual {v0}, [Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/BlackBoxCore$ProcessType;

    return-object v0
.end method
