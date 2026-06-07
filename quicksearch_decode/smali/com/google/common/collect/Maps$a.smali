.class public abstract enum Lcom/google/common/collect/Maps$a;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/Maps$a;",
        ">;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/Maps$a;

.field public static final enum b:Lcom/google/common/collect/Maps$a;

.field public static final synthetic c:[Lcom/google/common/collect/Maps$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/Maps$a$a;

    const/4 v1, 0x0

    const-string v2, "KEY"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/Maps$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Maps$a;->a:Lcom/google/common/collect/Maps$a;

    .line 2
    new-instance v0, Lcom/google/common/collect/Maps$a$b;

    const/4 v2, 0x1

    const-string v3, "VALUE"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/Maps$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Maps$a;->b:Lcom/google/common/collect/Maps$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/Maps$a;

    .line 3
    sget-object v3, Lcom/google/common/collect/Maps$a;->a:Lcom/google/common/collect/Maps$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/collect/Maps$a;->b:Lcom/google/common/collect/Maps$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/Maps$a;->c:[Lcom/google/common/collect/Maps$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILb/c/a/c/d1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Maps$a;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/Maps$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Maps$a;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/Maps$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Maps$a;->c:[Lcom/google/common/collect/Maps$a;

    invoke-virtual {v0}, [Lcom/google/common/collect/Maps$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Maps$a;

    return-object v0
.end method
