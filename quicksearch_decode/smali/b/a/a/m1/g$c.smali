.class public Lb/a/a/m1/g$c;
.super Landroid/database/DataSetObserver;
.source "SuggestionsAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/m1/g;


# direct methods
.method public constructor <init>(Lb/a/a/m1/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/g$c;->a:Lb/a/a/m1/g;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/m1/g;Lb/a/a/m1/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/m1/g$c;-><init>(Lb/a/a/m1/g;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/m1/g$c;->a:Lb/a/a/m1/g;

    invoke-virtual {v0}, Lb/a/a/m1/g;->g()V

    return-void
.end method
