.class public Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;
.super Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeftwardStartPredicate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;F)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    .line 913
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    return-void
.end method


# virtual methods
.method shouldStart(F)Z
    .locals 0

    .line 917
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;->thresholdValue:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
