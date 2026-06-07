.class public Lb/c/a/a/h$a;
.super Lb/c/a/a/h;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/a/h;->a(Ljava/lang/String;)Lb/c/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lb/c/a/a/h;


# direct methods
.method public constructor <init>(Lb/c/a/a/h;Lb/c/a/a/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/a/h$a;->c:Lb/c/a/a/h;

    iput-object p3, p0, Lb/c/a/a/h$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lb/c/a/a/h;-><init>(Lb/c/a/a/h;Lb/c/a/a/h$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/c/a/a/h;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified useForNull"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/c/a/a/h$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/c/a/a/h$a;->c:Lb/c/a/a/h;

    invoke-virtual {v0, p1}, Lb/c/a/a/h;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method
