.class public Lsmartisan/widget/SmartisanBottomBar$b;
.super Ljava/lang/Object;
.source "SmartisanBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanBottomBar;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SmartisanBottomBar;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmartisanBottomBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanBottomBar$b;->a:Lsmartisan/widget/SmartisanBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanBottomBar$b;->a:Lsmartisan/widget/SmartisanBottomBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanBottomBar;->a(Lsmartisan/widget/SmartisanBottomBar;)V

    return-void
.end method
