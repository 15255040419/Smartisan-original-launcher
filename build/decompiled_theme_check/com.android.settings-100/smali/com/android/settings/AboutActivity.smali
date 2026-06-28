.class public Lcom/android/settings/AboutActivity;
.super Lcom/android/settings/MainSettings;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/settings/MainSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindFragment()Lme/yokeyword/fragmentation/ISupportFragment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/fragmentation/ISupportFragment;",
            ">()TT;"
        }
    .end annotation

    .line 13
    new-instance p0, Lcom/android/settings/AboutFragment;

    invoke-direct {p0}, Lcom/android/settings/AboutFragment;-><init>()V

    return-object p0
.end method
