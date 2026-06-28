.class public abstract Lcom/android/settingslib/widget/CandidateInfo;
.super Ljava/lang/Object;
.source "CandidateInfo.java"


# instance fields
.field public final enabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/android/settingslib/widget/CandidateInfo;->enabled:Z

    return-void
.end method


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract loadIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadLabel()Ljava/lang/CharSequence;
.end method
