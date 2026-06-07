.class public final Lb/c/a/a/f$a;
.super Lb/c/a/a/f;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/a/f<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:Lb/c/a/a/f$a;

.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/c/a/a/f$a;

    invoke-direct {v0}, Lb/c/a/a/f$a;-><init>()V

    sput-object v0, Lb/c/a/a/f$a;->a:Lb/c/a/a/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/a/f;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/a/f$a;->a:Lb/c/a/a/f$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
