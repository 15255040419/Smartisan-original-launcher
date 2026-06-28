.class public final synthetic Lcom/android/settings/-$$Lambda$SettingsAPIProvider$sOB2StUH5VS-KPjz8VOL-4pxwVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/SettingsAPIProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SettingsAPIProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$SettingsAPIProvider$sOB2StUH5VS-KPjz8VOL-4pxwVA;->f$0:Lcom/android/settings/SettingsAPIProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$SettingsAPIProvider$sOB2StUH5VS-KPjz8VOL-4pxwVA;->f$0:Lcom/android/settings/SettingsAPIProvider;

    invoke-virtual {p0}, Lcom/android/settings/SettingsAPIProvider;->lambda$handleSettingsChanged$0$SettingsAPIProvider()V

    return-void
.end method
