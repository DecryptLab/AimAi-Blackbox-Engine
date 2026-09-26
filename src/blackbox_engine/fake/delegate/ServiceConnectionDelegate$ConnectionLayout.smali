.class final enum Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;
.super Ljava/lang/Enum;
.source "ServiceConnectionDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

.field public static final enum FOUR_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

.field public static final enum THREE_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

.field public static final enum TWO_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;


# direct methods
.method private static synthetic $values()[Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;
    .registers 3

    .line 169
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->TWO_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    sget-object v1, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->THREE_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    sget-object v2, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->FOUR_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    filled-new-array {v0, v1, v2}, [Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 170
    new-instance v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    const-string v1, "TWO_ARGUMENTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->TWO_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    .line 171
    new-instance v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    const-string v1, "THREE_ARGUMENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->THREE_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    .line 172
    new-instance v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    const-string v1, "FOUR_ARGUMENTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->FOUR_ARGUMENTS:Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    .line 169
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->$values()[Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    move-result-object v0

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->$VALUES:[Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

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

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 169
    const-class v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    return-object p0
.end method

.method public static values()[Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;
    .registers 1

    .line 169
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->$VALUES:[Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    invoke-virtual {v0}, [Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/fake/delegate/ServiceConnectionDelegate$ConnectionLayout;

    return-object v0
.end method
