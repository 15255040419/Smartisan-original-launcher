.class public final Lb/c/a/a/d$h;
.super Lb/c/a/a/d$e;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final b:Lb/c/a/a/d$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/c/a/a/d$h;

    invoke-direct {v0}, Lb/c/a/a/d$h;-><init>()V

    sput-object v0, Lb/c/a/a/d$h;->b:Lb/c/a/a/d$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lb/c/a/a/d$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 3
    invoke-static {p2, p1}, Lb/c/a/a/l;->b(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lb/c/a/a/d;
    .locals 1

    .line 2
    invoke-static {}, Lb/c/a/a/d;->a()Lb/c/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/a/d$h;->negate()Lb/c/a/a/d;

    move-result-object v0

    return-object v0
.end method
