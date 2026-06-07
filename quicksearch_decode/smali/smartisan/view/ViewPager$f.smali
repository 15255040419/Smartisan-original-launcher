.class public Lsmartisan/view/ViewPager$f;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/view/ViewPager;


# direct methods
.method public constructor <init>(Lsmartisan/view/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/view/ViewPager$f;->a:Lsmartisan/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsmartisan/view/ViewPager;Lsmartisan/view/ViewPager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/view/ViewPager$f;-><init>(Lsmartisan/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager$f;->a:Lsmartisan/view/ViewPager;

    invoke-virtual {v0}, Lsmartisan/view/ViewPager;->a()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager$f;->a:Lsmartisan/view/ViewPager;

    invoke-virtual {v0}, Lsmartisan/view/ViewPager;->a()V

    return-void
.end method
