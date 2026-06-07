.class public Lsmartisan/widget/SearchBar$i$a;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SearchBar$i;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SearchBar$i;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SearchBar$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar$i$a;->a:Lsmartisan/widget/SearchBar$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar$i$a;->a:Lsmartisan/widget/SearchBar$i;

    iget-boolean v1, v0, Lsmartisan/widget/SearchBar$i;->a:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->k()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->a()V

    :goto_0
    return-void
.end method
