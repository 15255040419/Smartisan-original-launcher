.class public Lb/a/a/n1/n;
.super Ljava/lang/Object;
.source "FixedResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/n1/n$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lb/a/a/n1/n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(I)Lb/a/a/n1/n$a;
    .locals 1

    .line 9
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/a/n1/n$a;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 10
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static a(II)V
    .locals 2

    .line 7
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/a/n1/n$a;

    iput p1, p0, Lb/a/a/n1/n$a;->b:I

    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/a/n1/n$a;

    iput-object p1, p0, Lb/a/a/n1/n$a;->a:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lb/a/a/n1/n$a;

    invoke-direct {v1, p1}, Lb/a/a/n1/n$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lb/a/a/n1/n;->a(I)Lb/a/a/n1/n$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0}, Lb/a/a/n1/n;->a(I)Lb/a/a/n1/n$a;

    move-result-object v0

    iget-object v0, v0, Lb/a/a/n1/n$a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p0}, Lb/a/a/n1/n;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b(I)I
    .locals 2

    .line 2
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/a/n1/n$a;

    iget p0, p0, Lb/a/a/n1/n$a;->b:I

    :goto_0
    return p0
.end method

.method public static b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lb/a/a/n1/n$a;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lb/a/a/n1/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0}, Lb/a/a/n1/n;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static c()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lb/a/a/n1/n;->a(I)Lb/a/a/n1/n$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lb/a/a/n1/n;->a(I)Lb/a/a/n1/n$a;

    move-result-object v1

    iget-object v1, v1, Lb/a/a/n1/n$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static d()Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lb/a/a/n1/n;->b(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0}, Lb/a/a/n1/n;->a(II)V

    return-void
.end method
