.class public Lb/a/a/m1/e$b;
.super Landroid/database/DataSetObserver;
.source "DelayingSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/m1/e;


# direct methods
.method public constructor <init>(Lb/a/a/m1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/e$b;->a:Lb/a/a/m1/e;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/m1/e;Lb/a/a/m1/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/m1/e$b;-><init>(Lb/a/a/m1/e;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/e$b;->a:Lb/a/a/m1/e;

    invoke-virtual {v0}, Lb/a/a/m1/e;->a()V

    return-void
.end method
