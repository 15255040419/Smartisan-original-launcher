.class public final Lb/a/a/l1/d$d;
.super Landroid/database/DataSetObserver;
.source "TNTSuggestionsListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lb/a/a/l1/d;


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/l1/d$d;->b:Lb/a/a/l1/d;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/a/a/l1/d$d;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/l1/d$d;->a:Z

    return v0
.end method

.method public onChanged()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/l1/d$d;->a:Z

    .line 2
    iget-object v0, p0, Lb/a/a/l1/d$d;->b:Lb/a/a/l1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/l1/d;->b(Z)V

    return-void
.end method
