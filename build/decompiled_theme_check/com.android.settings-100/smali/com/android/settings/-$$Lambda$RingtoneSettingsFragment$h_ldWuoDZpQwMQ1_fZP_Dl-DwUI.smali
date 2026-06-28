.class public final synthetic Lcom/android/settings/-$$Lambda$RingtoneSettingsFragment$h_ldWuoDZpQwMQ1_fZP_Dl-DwUI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/RingtoneSettingsFragment;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/RingtoneSettingsFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$RingtoneSettingsFragment$h_ldWuoDZpQwMQ1_fZP_Dl-DwUI;->f$0:Lcom/android/settings/RingtoneSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/-$$Lambda$RingtoneSettingsFragment$h_ldWuoDZpQwMQ1_fZP_Dl-DwUI;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$RingtoneSettingsFragment$h_ldWuoDZpQwMQ1_fZP_Dl-DwUI;->f$0:Lcom/android/settings/RingtoneSettingsFragment;

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$RingtoneSettingsFragment$h_ldWuoDZpQwMQ1_fZP_Dl-DwUI;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/settings/RingtoneSettingsFragment;->lambda$run$0$RingtoneSettingsFragment(Landroid/net/Uri;)V

    return-void
.end method
