.class public Lb/a/a/q$b;
.super Landroid/database/DataSetObserver;
.source "DefaultCorpusRanker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/q;


# direct methods
.method public constructor <init>(Lb/a/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/q$b;->a:Lb/a/a/q;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/q;Lb/a/a/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/q$b;-><init>(Lb/a/a/q;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/q$b;->a:Lb/a/a/q;

    invoke-virtual {v0}, Lb/a/a/q;->a()V

    return-void
.end method
