.class public Landroidx/drawerlayout/widget/DrawerLayout$d$a;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/drawerlayout/widget/DrawerLayout$d;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$d$a;->a:Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$d$a;->a:Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout$d;->b()V

    return-void
.end method
