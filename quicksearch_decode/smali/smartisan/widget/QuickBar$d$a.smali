.class public Lsmartisan/widget/QuickBar$d$a;
.super Ljava/lang/Object;
.source "QuickBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/QuickBar$d;->onTouched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/QuickBar$d;


# direct methods
.method public constructor <init>(Lsmartisan/widget/QuickBar$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar$d$a;->a:Lsmartisan/widget/QuickBar$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/QuickBar$d$a;->a:Lsmartisan/widget/QuickBar$d;

    iget-object v0, v0, Lsmartisan/widget/QuickBar$d;->a:Lsmartisan/widget/QuickBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisan/widget/QuickBar;->a(Lsmartisan/widget/QuickBar;Landroid/view/View;)V

    return-void
.end method
