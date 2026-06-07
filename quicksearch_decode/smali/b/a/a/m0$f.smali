.class public Lb/a/a/m0$f;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/m0;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;ZLcom/android/quicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:Lcom/android/quicksearchbox/util/Consumer;

.field public final synthetic f:Lb/a/a/m0;


# direct methods
.method public constructor <init>(Lb/a/a/m0;Ljava/lang/String;Ljava/util/Collection;ZJLcom/android/quicksearchbox/util/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m0$f;->f:Lb/a/a/m0;

    iput-object p2, p0, Lb/a/a/m0$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lb/a/a/m0$f;->b:Ljava/util/Collection;

    iput-boolean p4, p0, Lb/a/a/m0$f;->c:Z

    iput-wide p5, p0, Lb/a/a/m0$f;->d:J

    iput-object p7, p0, Lb/a/a/m0$f;->e:Lcom/android/quicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/a/a/m0$f;->f:Lb/a/a/m0;

    iget-object v1, p0, Lb/a/a/m0$f;->a:Ljava/lang/String;

    iget-object v2, p0, Lb/a/a/m0$f;->b:Ljava/util/Collection;

    iget-boolean v3, p0, Lb/a/a/m0$f;->c:Z

    iget-wide v4, p0, Lb/a/a/m0$f;->d:J

    invoke-virtual/range {v0 .. v5}, Lb/a/a/m0;->a(Ljava/lang/String;Ljava/util/Collection;ZJ)Lb/a/a/k0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/m0$f;->e:Lcom/android/quicksearchbox/util/Consumer;

    invoke-static {v1, v0}, Lb/a/a/n1/k;->a(Lcom/android/quicksearchbox/util/Consumer;Lcom/android/quicksearchbox/util/QuietlyCloseable;)V

    return-void
.end method
