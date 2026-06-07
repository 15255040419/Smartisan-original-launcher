.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$b;,
        Lcom/google/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field public final a:Lb/c/a/a/d;

.field public final b:Z

.field public final c:Lcom/google/common/base/Splitter$Strategy;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$Strategy;)V
    .locals 3

    .line 1
    invoke-static {}, Lb/c/a/a/d;->b()Lb/c/a/a/d;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLb/c/a/a/d;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Splitter$Strategy;ZLb/c/a/a/d;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$Strategy;

    .line 4
    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->b:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/base/Splitter;->a:Lb/c/a/a/d;

    .line 6
    iput p4, p0, Lcom/google/common/base/Splitter;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/google/common/base/Splitter;)Lb/c/a/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/base/Splitter;->a:Lb/c/a/a/d;

    return-object p0
.end method

.method public static a(C)Lcom/google/common/base/Splitter;
    .locals 0

    .line 2
    invoke-static {p0}, Lb/c/a/a/d;->c(C)Lb/c/a/a/d;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->b(Lb/c/a/a/d;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lb/c/a/a/d;)Lcom/google/common/base/Splitter;
    .locals 2

    .line 2
    invoke-static {p0}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$a;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$a;-><init>(Lb/c/a/a/d;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/google/common/base/Splitter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/common/base/Splitter;->b:Z

    return p0
.end method

.method public static synthetic c(Lcom/google/common/base/Splitter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/base/Splitter;->d:I

    return p0
.end method


# virtual methods
.method public a()Lcom/google/common/base/Splitter;
    .locals 1

    .line 3
    invoke-static {}, Lb/c/a/a/d;->c()Lb/c/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->a(Lb/c/a/a/d;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/c/a/a/d;)Lcom/google/common/base/Splitter;
    .locals 4

    .line 4
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->b:Z

    iget v3, p0, Lcom/google/common/base/Splitter;->d:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$Strategy;ZLb/c/a/a/d;I)V

    return-object v0
.end method
