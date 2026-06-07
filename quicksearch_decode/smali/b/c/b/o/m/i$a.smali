.class public Lb/c/b/o/m/i$a;
.super Lb/c/b/o/m/i$c;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/o/m/i;->a(Lb/c/b/c;Ljava/lang/reflect/Field;Ljava/lang/String;Lb/c/b/p/a;ZZ)Lb/c/b/o/m/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Lb/c/b/m;

.field public final synthetic g:Lb/c/b/c;

.field public final synthetic h:Lb/c/b/p/a;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Lb/c/b/o/m/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLb/c/b/m;Lb/c/b/c;Lb/c/b/p/a;Z)V
    .locals 0

    .line 1
    iput-object p5, p0, Lb/c/b/o/m/i$a;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lb/c/b/o/m/i$a;->e:Z

    iput-object p7, p0, Lb/c/b/o/m/i$a;->f:Lb/c/b/m;

    iput-object p8, p0, Lb/c/b/o/m/i$a;->g:Lb/c/b/c;

    iput-object p9, p0, Lb/c/b/o/m/i$a;->h:Lb/c/b/p/a;

    iput-boolean p10, p0, Lb/c/b/o/m/i$a;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lb/c/b/o/m/i$c;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/q/a;Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lb/c/b/o/m/i$a;->f:Lb/c/b/m;

    invoke-virtual {v0, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    iget-boolean v0, p0, Lb/c/b/o/m/i$a;->i:Z

    if-nez v0, :cond_1

    .line 7
    :cond_0
    iget-object v0, p0, Lb/c/b/o/m/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lb/c/b/o/m/i$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/c/b/o/m/i$a;->f:Lb/c/b/m;

    goto :goto_0

    :cond_0
    new-instance v0, Lb/c/b/o/m/m;

    iget-object v1, p0, Lb/c/b/o/m/i$a;->g:Lb/c/b/c;

    iget-object v2, p0, Lb/c/b/o/m/i$a;->f:Lb/c/b/m;

    iget-object v3, p0, Lb/c/b/o/m/i$a;->h:Lb/c/b/p/a;

    .line 3
    invoke-virtual {v3}, Lb/c/b/p/a;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lb/c/b/o/m/m;-><init>(Lb/c/b/c;Lb/c/b/m;Ljava/lang/reflect/Type;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    .line 8
    iget-boolean v0, p0, Lb/c/b/o/m/i$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lb/c/b/o/m/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
