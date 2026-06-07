.class public final enum Lb/a/a/n1/m$b;
.super Ljava/lang/Enum;
.source "DeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/a/n1/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/n1/m$b;

.field public static final enum b:Lb/a/a/n1/m$b;

.field public static final enum c:Lb/a/a/n1/m$b;

.field public static final enum d:Lb/a/a/n1/m$b;

.field public static final enum e:Lb/a/a/n1/m$b;

.field public static final enum f:Lb/a/a/n1/m$b;

.field public static final synthetic g:[Lb/a/a/n1/m$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lb/a/a/n1/m$b;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lb/a/a/n1/m$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/n1/m$b;->a:Lb/a/a/n1/m$b;

    new-instance v0, Lb/a/a/n1/m$b;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2, v2}, Lb/a/a/n1/m$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/n1/m$b;->b:Lb/a/a/n1/m$b;

    new-instance v0, Lb/a/a/n1/m$b;

    const/4 v3, 0x2

    const-string v4, "MOBILE"

    invoke-direct {v0, v4, v3, v3}, Lb/a/a/n1/m$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/n1/m$b;->c:Lb/a/a/n1/m$b;

    new-instance v0, Lb/a/a/n1/m$b;

    const/4 v4, 0x3

    const-string v5, "MOBILE2G"

    invoke-direct {v0, v5, v4, v3}, Lb/a/a/n1/m$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/n1/m$b;->d:Lb/a/a/n1/m$b;

    new-instance v0, Lb/a/a/n1/m$b;

    const/4 v5, 0x4

    const-string v6, "MOBILE3G"

    invoke-direct {v0, v6, v5, v4}, Lb/a/a/n1/m$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/n1/m$b;->e:Lb/a/a/n1/m$b;

    new-instance v0, Lb/a/a/n1/m$b;

    const/4 v6, 0x5

    const-string v7, "MOBILE4G"

    invoke-direct {v0, v7, v6, v5}, Lb/a/a/n1/m$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/a/n1/m$b;->f:Lb/a/a/n1/m$b;

    const/4 v0, 0x6

    new-array v0, v0, [Lb/a/a/n1/m$b;

    .line 2
    sget-object v7, Lb/a/a/n1/m$b;->a:Lb/a/a/n1/m$b;

    aput-object v7, v0, v1

    sget-object v1, Lb/a/a/n1/m$b;->b:Lb/a/a/n1/m$b;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/n1/m$b;->c:Lb/a/a/n1/m$b;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/a/n1/m$b;->d:Lb/a/a/n1/m$b;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/n1/m$b;->e:Lb/a/a/n1/m$b;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/n1/m$b;->f:Lb/a/a/n1/m$b;

    aput-object v1, v0, v6

    sput-object v0, Lb/a/a/n1/m$b;->g:[Lb/a/a/n1/m$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/n1/m$b;
    .locals 1

    .line 1
    const-class v0, Lb/a/a/n1/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/a/n1/m$b;

    return-object p0
.end method

.method public static values()[Lb/a/a/n1/m$b;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/n1/m$b;->g:[Lb/a/a/n1/m$b;

    invoke-virtual {v0}, [Lb/a/a/n1/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/n1/m$b;

    return-object v0
.end method
