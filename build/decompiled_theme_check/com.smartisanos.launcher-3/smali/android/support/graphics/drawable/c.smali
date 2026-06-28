.class Landroid/support/graphics/drawable/c;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field final synthetic this$0:Landroid/support/graphics/drawable/f;


# direct methods
.method constructor <init>(Landroid/support/graphics/drawable/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/graphics/drawable/c;->this$0:Landroid/support/graphics/drawable/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/c;->this$0:Landroid/support/graphics/drawable/f;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/c;->this$0:Landroid/support/graphics/drawable/f;

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/c;->this$0:Landroid/support/graphics/drawable/f;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
