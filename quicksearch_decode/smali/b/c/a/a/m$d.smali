.class public abstract enum Lb/c/a/a/m$d;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/c/a/a/m$d;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/c/a/a/m$d;

.field public static final enum b:Lb/c/a/a/m$d;

.field public static final enum c:Lb/c/a/a/m$d;

.field public static final enum d:Lb/c/a/a/m$d;

.field public static final synthetic e:[Lb/c/a/a/m$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lb/c/a/a/m$d$a;

    const/4 v1, 0x0

    const-string v2, "ALWAYS_TRUE"

    invoke-direct {v0, v2, v1}, Lb/c/a/a/m$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/a/m$d;->a:Lb/c/a/a/m$d;

    .line 2
    new-instance v0, Lb/c/a/a/m$d$b;

    const/4 v2, 0x1

    const-string v3, "ALWAYS_FALSE"

    invoke-direct {v0, v3, v2}, Lb/c/a/a/m$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/a/m$d;->b:Lb/c/a/a/m$d;

    .line 3
    new-instance v0, Lb/c/a/a/m$d$c;

    const/4 v3, 0x2

    const-string v4, "IS_NULL"

    invoke-direct {v0, v4, v3}, Lb/c/a/a/m$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/a/m$d;->c:Lb/c/a/a/m$d;

    .line 4
    new-instance v0, Lb/c/a/a/m$d$d;

    const/4 v4, 0x3

    const-string v5, "NOT_NULL"

    invoke-direct {v0, v5, v4}, Lb/c/a/a/m$d$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/a/m$d;->d:Lb/c/a/a/m$d;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/c/a/a/m$d;

    .line 5
    sget-object v5, Lb/c/a/a/m$d;->a:Lb/c/a/a/m$d;

    aput-object v5, v0, v1

    sget-object v1, Lb/c/a/a/m$d;->b:Lb/c/a/a/m$d;

    aput-object v1, v0, v2

    sget-object v1, Lb/c/a/a/m$d;->c:Lb/c/a/a/m$d;

    aput-object v1, v0, v3

    sget-object v1, Lb/c/a/a/m$d;->d:Lb/c/a/a/m$d;

    aput-object v1, v0, v4

    sput-object v0, Lb/c/a/a/m$d;->e:[Lb/c/a/a/m$d;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILb/c/a/a/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lb/c/a/a/m$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/c/a/a/m$d;
    .locals 1

    .line 1
    const-class v0, Lb/c/a/a/m$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/c/a/a/m$d;

    return-object p0
.end method

.method public static values()[Lb/c/a/a/m$d;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/a/m$d;->e:[Lb/c/a/a/m$d;

    invoke-virtual {v0}, [Lb/c/a/a/m$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/c/a/a/m$d;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/base/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
