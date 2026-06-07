.class public abstract enum Lb/c/b/l;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/c/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/c/b/l;

.field public static final enum b:Lb/c/b/l;

.field public static final synthetic c:[Lb/c/b/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/c/b/l$a;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lb/c/b/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/b/l;->a:Lb/c/b/l;

    .line 2
    new-instance v0, Lb/c/b/l$b;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Lb/c/b/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/b/l;->b:Lb/c/b/l;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/c/b/l;

    .line 3
    sget-object v3, Lb/c/b/l;->a:Lb/c/b/l;

    aput-object v3, v0, v1

    sget-object v1, Lb/c/b/l;->b:Lb/c/b/l;

    aput-object v1, v0, v2

    sput-object v0, Lb/c/b/l;->c:[Lb/c/b/l;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILb/c/b/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lb/c/b/l;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/c/b/l;
    .locals 1

    .line 1
    const-class v0, Lb/c/b/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/c/b/l;

    return-object p0
.end method

.method public static values()[Lb/c/b/l;
    .locals 1

    .line 1
    sget-object v0, Lb/c/b/l;->c:[Lb/c/b/l;

    invoke-virtual {v0}, [Lb/c/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/c/b/l;

    return-object v0
.end method
