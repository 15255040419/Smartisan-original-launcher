.class public Lsmartisanos/app/settings/search/EnablerFactory;
.super Ljava/lang/Object;
.source "EnablerFactory.java"

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSettingsEnabler(Landroid/content/Context;Lsmartisanos/widget/SwitchEx;Lsmartisanos/app/settings/search/SearchResultItem;)Lsmartisanos/app/settings/search/SettingsEnabler;
    .locals 0

    new-instance p0, Lsmartisanos/app/settings/search/SettingsEnabler;

    invoke-direct {p0}, Lsmartisanos/app/settings/search/SettingsEnabler;-><init>()V

    return-object p0
.end method
